class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @order = Order.create()
  end
end
