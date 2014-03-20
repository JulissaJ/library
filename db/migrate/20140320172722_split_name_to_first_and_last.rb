class SplitNameToFirstAndLast < ActiveRecord::Migration
  def change
  	add_column :readers, :first_name, :string
  	add_column :readers, :last_name, :string

		Reader.reset_column_information
  	Reader.all.each do |reader|
  		person = reader.full_name.split
  		reader.first_name = person[0]
  		reader.last_name = person[1]
  		reader.save
  	end

  end


end
