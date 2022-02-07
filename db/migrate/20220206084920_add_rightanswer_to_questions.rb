class AddRightanswerToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :right_answer, :string
  end
end
