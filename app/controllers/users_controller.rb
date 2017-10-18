class UsersController < ApplicationController

#before_filter :authenticat_user!

  def show
    @user = User.find(params[:id])
    #@user_listings = @user.listings.order("updated_at DESC")
  end
end