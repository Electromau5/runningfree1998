class ListingsController < ApplicationController
    
def index
  @listings = Listing.all
end

private
def listing_params
  params.require(:listing).permit(:name, :description, :price, :image, :image2, :image3)
end
                                       
def set_listing
  @listing = Listing.friendly.find(params[:id])
end
end