class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    @categories = Product.categories.keys
    @order = 0
    if user_signed_in?
      if current_user.orders.any?
        @order = current_user.orders.where(paid: false).last
      else
        @order = Order.new(user_id: current_user.id)
      end
    else
      @order = Order.new(user_id: 1)
    end
    raise
    @products.each do |product|
      product_order = ProductOrder.new
      product_order.product = product
      product_order.order = @order
      product_order.save
      puts product_order
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:price, :details, :photo, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
