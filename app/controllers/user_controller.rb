# frozen_string_literal: true

class UserController < ApplicationController
  def new; end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to 'user/index'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
