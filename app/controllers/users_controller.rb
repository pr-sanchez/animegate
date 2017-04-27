class UsersController < ApplicationController
  def index
  end
  def show
  @user = User.find_by_username(params[:id])
  @user_reviews = Review.find_by(user_id: params[:user_id])
  end



end
