class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :weekday
      t.time :start
      t.time :end
      t.boolean :meeting

      t.timestamps
    end
  end
end
