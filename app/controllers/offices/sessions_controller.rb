# frozen_string_literal: true

class Offices::SessionsController < Devise::SessionsController
  def new
  end
  
  def create
    office = Office.find_by(email: params[:sessions][:email].downcase)
    if office && office.valid_password?(params[:sessions][:password])
      session[:office_id] = office.id
      redirect_to realestates_path
    else
      flash.now[:danger] = 'login failed'
      render 'new'
    end
  end
  
  def destroy
    session.delete(:office_id)
    flash[:notice] = 'logout success'
    redirect_to realestates_path
  end
  
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
