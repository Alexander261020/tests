class UsersController < ApplicationController
  before_action :set_current_user

  def index
    @classifications = Classification.all
    # flash[:success] = "Post successfully created"
    # flash[:danger] = "Post successfully created"
  end

  def show
    @classifications = Classification.all
  end

  def destroy
  end

  private

  def set_current_user
    @user = current_user
  end
end
