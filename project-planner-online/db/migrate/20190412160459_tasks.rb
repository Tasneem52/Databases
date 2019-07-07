class Tasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
     t.string :name, null: false
     t.string :description
     t.date :due_date
     t.belongs_to :project, null: false
     t.belongs_to :user
   end
  end
end
