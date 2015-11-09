class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.date :start_date
      t.date :end_date
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
