class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
