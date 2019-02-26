# frozen_string_literal: true

class Offices::RegistrationsController < Devise::RegistrationsController
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
  
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
