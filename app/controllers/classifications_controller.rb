class ClassificationsController < ApplicationController
  before_action :authorize_user

  def show
    name = params[:name]
    @classification = Classification.with_levels.find_by(name: name)
    @levels = @classification.levels
  end

  private

  def authorize_user
    @user = current_user
  end
end
