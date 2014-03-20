class RemoveReaderFromCheckouts < ActiveRecord::Migration
  def up
  	remove_column :checkouts, :person
  end

  def down
  	add_column :checkouts, :person, :string
  end
end
