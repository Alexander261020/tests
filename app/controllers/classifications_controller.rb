class ClassificationsController < ApplicationController
  before_action :authorize_user

  def show
    @classification = Classification.with_levels.find_by(id: params[:id])
    @levels = @classification.levels
  end

  private

  def authorize_user
    @user = current_user
  end
end
