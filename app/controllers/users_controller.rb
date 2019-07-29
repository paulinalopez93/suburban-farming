class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.find(3)
  end
end
