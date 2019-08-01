class OrdersController < ApplicationController

  before_action :set_product, only: [ :add_to_cart, :remove_from_cart ]
  before_action :set_order, only: [ :add_to_cart, :remove_from_cart, :payment]
  skip_before_action :authenticate_user!, only: [ :add_to_cart, :remove_from_cart, :cart ]

  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: {status: 200} }
    end
  end

  def payment
    customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.total_price.cents,
      description:  "Order #{@order.id}",
      currency:     "EUR"
    )

    @order.update(payment: charge.to_json, status: 'paid', price_cents: @order.total_price)

    redirect_to order_path(@order)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to order_path(@order)
  end

  def add_to_cart
    @product_order = @order.product_orders.find_by(product_id: @product.id)
    @product_order.quantity = @product_order.quantity + 1
    @product_order.price_cents = @product_order.price_cents + @product.price_cents
    @order.user = current_user
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
    @order.user = current_user
    @order.save

    respond_to do |format|
      format.html { redirect_to browse_path(@order) }
      format.js
    end
  end

  def update_status
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
