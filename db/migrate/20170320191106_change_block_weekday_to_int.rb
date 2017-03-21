class ChangeBlockWeekdayToInt < ActiveRecord::Migration[5.0]
	change_column :Blocks, :weekday, :integer
end
