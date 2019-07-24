class OrdersController < ApplicationController
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
    @order = Order.all
  end

  private

  def order_params
    params.require(:order).permit(:city, :street, :street_number, :zip_code)
  end
end
