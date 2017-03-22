class CreateTimeBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :time_blocks do |t|
      t.string :name
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
