class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update, :show]
  
  def show
  end
  
  def edit
  end
  
  def update
    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render 'edit'
    end
  end
  
  private
  
  def profile_params
    if user_signed_in?
      params.require(:user).permit(:profile, :profile_cache)
    elsif office_signed_in?
      params.require(:office).permit(:profile, :profile_cache)
    end
  end
  
  def set_profile
    if user_signed_in?
      @profile = User.find(current_user.id)
    elsif office_signed_in?
      @profile = Office.find(current_office.id)
    end
  end
  
end
