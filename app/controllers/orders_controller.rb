class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      create_new_order
    else
      render :new
    end
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

   def create_new_order
    product = Product.find(params[:product_id])
    order = Order.create!(amount: product.price, state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end

  def order_params
    params.require(:order).permit(:city, :street, :street_number, :zip_code)
  end
end
