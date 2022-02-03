class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :number, limit: 2
      t.string :name
      t.string :answer, array: true, default: []
      t.timestamps
    end
  end
end
