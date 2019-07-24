class OrdersController < ApplicationController
  before_action :set_product, only: [ :add_to_cart, :remove_from_cart ]
  before_action :authenticate_user!, only: [ :add_to_cart, :remove_from_cart ]
  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    @order.save
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  def payment
  end

  def add_to_cart
    raise
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
  end

  def remove_from_cart
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
  def order_params
    params.require(:order).permit(:city, :street, :street_number, :zip_code)
  end
end
