class LevelsController < ApplicationController
  def show
    @admin = @user.has_role? :admin unless @user.nil?
    @classification = Classification.with_levels.find_by(id: params[:id])
    @level = Level.find_by(id: params[:id])
  end
end
