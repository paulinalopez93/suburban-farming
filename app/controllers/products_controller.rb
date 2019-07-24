class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
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

  def add
    product.quantity = +1
    create_new_order
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

  # def create_new_order
  #   teddy = Teddy.find(params[:teddy_id])
  # order  = Order.create!(teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)

  # redirect_to new_order_payment_path(order)
  # end

  def product_params
    params.require(:product).permit(:price, :details, :photo, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
