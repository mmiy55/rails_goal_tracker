class ChangeDefaultValueForCompleted < ActiveRecord::Migration[7.0]
  def change
    change_column_default :goal, :completed, false
  end
end
