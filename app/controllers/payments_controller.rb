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
      amount:       @order.price_cents,
      description:  "Order #{@order.id}",
      currency:     "EUR"
    )

    @order.update(payment: charge.to_json, status: 'paid')
    redirect_to order_path(@order)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end
