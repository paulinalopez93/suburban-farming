class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_order, only: [:index, :show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @categories = Product.categories.keys
    unless @order.user_id
      @products.each do |product|
        unless @order.product_orders.where(product_id: product.id).any?
          product_order = ProductOrder.new
          product_order.product = product
          product_order.order = @order
          product_order.save
        end
      end
    end

    @order.product_orders.where.not(quantity: 0).each do |product_order|
      @order.price_cents = @order.price_cents + product_order.price_cents
      @order.save
    end
  end

  def new
    @product = Product.new
  end

   def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to profile_path(flash: "Product made")
    else
      render :new
  end
end

  def show
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def product_params
    params.require(:product).permit(:name, :user_id, :price, :details, :photo, :category, :price_cents)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
