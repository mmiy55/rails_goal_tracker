class ChangeDefaultValueForCompleted < ActiveRecord::Migration[7.0]
  def change
    change_column_default :goals, :completed, false
  end
end
