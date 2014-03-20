class RemoveFullNameFromReader < ActiveRecord::Migration
  def up
  	remove_column :readers, :full_name
  end

  def down
  	add_column :readers, :full_name, :string 
  end
end


