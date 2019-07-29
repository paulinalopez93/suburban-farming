class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.find(3)
  end

  def post
    @user = current_user

  end
end
