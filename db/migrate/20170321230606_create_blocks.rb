class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.integer :weekday
      t.boolean :meeting
      t.references :timeBlock, foreign_key: true

      t.timestamps
    end
  end
end
