class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.find(17)
  end

  def post
    @user = current_user

  end
end
