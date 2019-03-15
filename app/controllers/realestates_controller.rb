class RealestatesController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  # before_action :login_check, only: [:new, :edit, :show, :destroy]
  
  def index
    @product = Product.order(id: :desc).all
  end
  
  def new
    if params[:back]
      @product = Product.new(product_params)
    else
      @product = Product.new
    end
    @product_image = @product.images.build
  end
  
  def create
    @product = current_office.products.build(product_params)
    # respond_to do |format|
      if @product.save
        params[:images]['image'].each do |a|
          @images = @product.images.create!(:image => a)
        end
        # ContactMailer.picture_mail(current_user).deliver
        # address로 위도 경도 구하기 latitude/longitude
        
        redirect_to realestates_path
      else
        render 'new'
      end
    # end
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to realestates_path
    else
      render 'edit'
    end
  end
  
  # def confirm
  #   @product = current_office.products.build(product_params)
  #   render :new if @product.invalid?
  # end
  
  def destroy
    @product.destroy
    redirect_to realestates_path
  end
  
  def show
    if user_signed_in?
      @liked = current_user.likeds.find_by(product_id: @product.id)
    end
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :deposit, :reward, :area, :structure_id, :type_id, :address, :office_id, :m_fees, :rent, :floor, images_attributes: [:id, :product_id, :image]) 
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
  
end
