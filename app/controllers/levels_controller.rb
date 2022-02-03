class LevelsController < ApplicationController
  def show
    @admin = true if @user&.email == 'admin@mail.ru'
    @classification = Classification.with_levels.find_by(id: params[:id])
    @level = Level.find_by(id: params[:id])
  end
end
