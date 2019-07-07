class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :reader_name, null: false
      t.timestamps null: false
      t.belongs_to :book
    end
  end
end
