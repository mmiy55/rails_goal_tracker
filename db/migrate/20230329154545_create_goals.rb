class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :deadline
      t.string :measure
      t.string :frequency
      t.boolean :completed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
