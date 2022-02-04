class ClassificationsController < ApplicationController
  def show
    @classification = Classification.with_levels.find_by(id: params[:id])
    @levels = @classification.levels
  end
end
