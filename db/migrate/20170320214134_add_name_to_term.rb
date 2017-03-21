class AddNameToTerm < ActiveRecord::Migration[5.0]
  def change
  	add_column :terms, :name, :string
  end
end
