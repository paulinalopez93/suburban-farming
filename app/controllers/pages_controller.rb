class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if user_signed_in?
      if current_user.orders.where(status: "pending").any?
        @order = current_user.orders.where(status: "pending").last
      else
        @order = Order.create()
      end
    else
      @order = Order.create()
    end
  end
end
