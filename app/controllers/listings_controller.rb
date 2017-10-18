class ListingsController < ApplicationController

before_action :set_listing, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show, :landing]
before_action :require_sameuser, only: [:edit, :update, :destroy]

def index
  @listings = Listing.all
end

def new
  @listing = current_user.listings.build
end

def create
	@listing = current_user.listings.build(listing_params)
    if @listing.save
    	redirect_to listing_path(@listing)
    else
        render 'new'
    end
end

def edit
end

def update
	if @listing.update(listing_params)
        redirect_to listing_path(@listing)
      else
        render 'edit'
      end
end

def show
      @user = current_user
end

def destroy
      @listing.destroy
      redirect_to root_path
end

private
def listing_params
  params.require(:listing).permit(:name, :description, :price, :image, :image2, :image3)
end
                                       
def set_listing
  @listing = Listing.find(params[:id])
end

def require_sameuser
      if current_user != @listing.user && !current_user.admin 
        redirect_to root_path 
      end
end
end 