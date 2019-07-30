class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.find(17)
  end

  def post
    @user = current_user
    @order = Order.find(3)
  end
end

private

def product_params
  params.require(:product).permit(:price, :details, :photo, :category)
end
