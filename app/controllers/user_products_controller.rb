class UserProductsController < ApplicationController
  before_action :set_user_product, only: [:show, :update, :destroy]

  # GET /user_products
  def index
    @user_products = UserProduct.all

    render json: @user_products, include: [:user, :product]
  end

  # GET /user_products/1
  def show
    render json: @user_product, include: [:user, :product]
  end

  # POST /user_products
  def create
    @user_product = UserProduct.new(user_product_params)
    @user_product.user = User.find_by(id: user_product_params.user_id.to_int)
    @user_product.product = Product.find_by(id: user_product_params.product_id)


    if @user_product.save
      render json: @user_product, status: :created, location: @user_product
    else
      render json: @user_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_products/1
  def update
    if @user_product.update(user_product_params)
      render json: @user_product
    else
      render json: @user_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_products/1
  def destroy
    @user_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_product
      @user_product = UserProduct.find(params[:id])
      userProduct = UserProduct.find(params[:id])
      product=userProduct.product
      category=userProduct.category
      origin=userProduct.origin
      user=userProduct.user
      @user_product=[userProduct, product, category, origin, user]
      return @user_product
    end

    # Only allow a trusted parameter "white list" through.
    def user_product_params
      params.require(:user_product).permit(:img_src, :description, :product_type, :tags, :active, :karma_value, :flagged, :flagged_message, :product_id, :user_id)
    end
end
