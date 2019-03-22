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
        
        if params[:images]
          params[:images]['image'].each do |a| 
            @images = @product.images.create!(:image => a)
          end
        end
        
        if params[:product_terms]
          params[:product_terms]['product_term'].each do |t| 
            @product_terms = @product.product_terms.create!(:term_id => t)
          end
        end
        
        # ContactMailer.picture_mail(current_user).deliver
        # address로 위도 경도 구하기 latitude/longitude
        
        redirect_to realestates_path
      else
        render 'new'
      end
    # end
  end
  
  def search
    @product = Product.where("address like ?", "%#{params[:search_addr]}%")
    
    unless params[:search_rent].blank?
      @product = @product.where("rent <= ?", "#{params[:search_rent]}")
    end
    
    unless params[:search_structures].blank?
      @product = @product.where(:structure_id => params[:search_structures][:search_structure])
    end
    
    unless params[:search_types].blank?
      @product = @product.where(:type_id => params[:search_types][:search_type])
    end
    
    unless params[:search_terms].blank?
      @product.each do |product|
        @product_terms = product.product_terms.where(:term_id => params[:search_terms][:search_term])
        # 조건검색 구현 어떻게 하쥬?
      end
      
    end
    
    render 'index'
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
    params.require(:product).permit(:name, :deposit, :reward, :area, :structure_id, :type_id, :address, :office_id, :m_fees, :rent, :floor, images_attributes: [:id, :product_id, :image], product_terms_attriutes: [:id, :product_id, :term_id]) 
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
  
end
