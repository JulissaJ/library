class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :person, null: false
      t.integer :book_id, null: false
      t.datetime :checked_in_at

      t.timestamps
    end
  end
end
