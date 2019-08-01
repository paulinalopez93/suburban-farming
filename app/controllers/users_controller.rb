class UsersController < ApplicationController
  def profile
    @user = current_user
    @order = Order.last
    @hubs = Hub.all
    @markers = @hubs.map do |hub|
      {
        lat: hub.latitude,
        lng: hub.longitude,
        id: hub.id
      }
    end
  end

  def post
    @user = current_user
    @order = Order.last
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :profile
    end
  end

private

def product_params
  params.require(:product).permit(:price, :details, :photo, :category)
end

def user_params
  params.require(:user).permit(:hub_id)
end

end
