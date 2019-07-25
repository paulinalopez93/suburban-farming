class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_order

  def index
    @products = Product.all
    @categories = Product.categories.keys

    unless @order.user_id
      @products.each do |product|
        product_order = ProductOrder.new
        product_order.product = product
        product_order.order = @order
        product_order.save
      end
    end
  end

  def show
  end




  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def product_params
    params.require(:product).permit(:price, :details, :photo, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
