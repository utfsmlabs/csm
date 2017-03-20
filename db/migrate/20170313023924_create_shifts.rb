class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.references :term, foreign_key: true
      t.references :block, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
