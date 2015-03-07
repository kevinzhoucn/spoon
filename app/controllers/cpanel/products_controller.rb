class Cpanel::ProductsController < Cpanel::ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @products = Product.all
    @product_new = Product.where(type_id: 0)
    @product_special = Product.where(type_id: 1)
    @product_star = Product.where(type_id: 2)
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to cpanel_products_path
    end
    # respond_with(@product)
  end

  def update
    @product.update(product_params)
    redirect_to cpanel_products_path
    # respond_with(@product)
  end

  def destroy
    @product.destroy
    redirect_to cpanel_products_path
    # respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :content, :avatar, :type_id)
    end
end
