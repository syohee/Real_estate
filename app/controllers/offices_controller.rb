class OfficesController < ApplicationController
  before_action :set_office, only: [:show, :destroy]
  
  def new
    @office = Office.new
  end
  
  def create
    @office = Office.new(office_params)
    @office.profile = Rails.root.join('app', 'assets', 'images', 'profile_default.jpg').open
    if @office.save
      redirect_to new_office_session_path
    else
      render 'new'
    end
  end
  
  def destroy
  end
  
  def show
    # @profile = User.find(current_user.id).profile
    # @favorite_pictures = @user.favorite_pictures
  end
  
  private
  
  def office_params
    params.require(:office).permit(:name, :email, :password, :password_confirmation)
  end
  
  def profile_params
    params.require(:profile).permit(:image, :image_cache)
  end
  
  def set_office
    @office = Office.find(current_office.id)
  end
end
