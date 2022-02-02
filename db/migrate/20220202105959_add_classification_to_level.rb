class AddClassificationToLevel < ActiveRecord::Migration[7.0]
  def change
    add_reference :levels, :classification, null: false, foreign_key: true
  end
end
