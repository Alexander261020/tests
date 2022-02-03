class AddLevelsToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :level, null: false, foreign_key: true
  end
end
