class OrdersController < ApplicationController

  before_action :set_product, only: [ :add_to_cart, :remove_from_cart ]
  before_action :set_order, only: [ :add_to_cart, :remove_from_cart ]
  skip_before_action :authenticate_user!, only: [ :add_to_cart, :remove_from_cart ]

  def show
    @order = current_user.orders.where(status: 'paid').find(params[:id])
  end

  def payment
  end

  def add_to_cart
    @product_order = @order.product_orders.find_by(product_id: @product.id)
    @product_order.quantity = @product_order.quantity + 1
    @product_order.price_cents = @product_order.price_cents + @product.price_cents
    @product_order.save
    @order.save

    respond_to do |format|
      format.html { redirect_to browse_path(@order) }
      format.js
    end
  end

  def remove_from_cart
    @product_order = @order.product_orders.find_by(product_id: @product.id)
    if @product_order.quantity > 0
      @product_order.quantity = @product_order.quantity - 1
    end
    @product_order.save
    @order.save

    respond_to do |format|
      format.html { redirect_to browse_path(@order) }
      format.js
    end
  end

  def cart
    @order = Order.find(params[:order_id])
    respond_to do |format|
      format.html { redirect_to browse_path(@order) }
      format.js
    end
  end


  # def checkout
  #   @order = Order.find(params[:id])
  # end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:city, :street, :street_number, :zip_code)
  end
end
