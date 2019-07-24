class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  # def create
  #   customer = Stripe::Customer.create(
  #     source: params[:stripeToken],
  #     email: params[:stripeEmail]
  #   )
  #   charge = Stripe::Charge.create(
  #     customer: customer.id
  #   )
  # end

  private

  def set_order
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end
