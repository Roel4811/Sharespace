class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :budget
      t.date :deadline

      t.timestamps
    end
  end
end
