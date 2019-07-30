class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.last
  end

  def post
    @user = current_user
    @order = Order.last
  end
end

private

def product_params
  params.require(:product).permit(:price, :details, :photo, :category)
end
