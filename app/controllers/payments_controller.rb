class PaymentsController < ApplicationController
  before_action :set_order

  def new
    @user = current_user
    @order = Order.find(params[:order_id])
  end

  def create
  customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.total_price,
      description:  "Order #{@order.id}",
      currency:     "EUR"
    )

    @order.update(payment: charge.to_json, status: 'paid', price_cents: @order.total_price)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to order_path(@order)

    respond_to do |format|
      format.html { redirect_to order_path(@order) }
      format.json { render json: {status: 200} }
      format.js
    end
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end
