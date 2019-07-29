class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def post
    @user = current_user

  end
end
