class UsersController < ApplicationController
  before_action :set_current_user

  def index
  end

  def show
  end

  def destroy
  end

  private

  def set_current_user
    @user = current_user
  end
end
