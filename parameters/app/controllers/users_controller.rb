class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # POST /users
  # POST /users.json
  def create
    @user = User.create(user_params)
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :favorite_pizza_topping)
  end
end
