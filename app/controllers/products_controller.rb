class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    @categories = Product.categories.keys
    @order = 0
    if user_signed_in?
      if current_user.orders.any?
        @order = current_user.orders.where(status: "pending").last
      else
        @order = Order.create(user_id: current_user.id)
      end
    else
      @order = Order.create()
    end
    @products.each do |product|
      product_order = ProductOrder.new
      product_order.product = product
      product_order.order = @order
      product_order.save
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
