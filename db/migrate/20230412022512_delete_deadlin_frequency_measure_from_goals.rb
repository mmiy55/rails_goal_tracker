class DeleteDeadlinFrequencyMeasureFromGoals < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :deadline
    remove_column :goals, :measure
    remove_column :goals, :frequency
  end
end
