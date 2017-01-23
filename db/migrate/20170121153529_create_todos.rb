class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :text
      t.string :isCompleted
      t.integer :project_id

      t.timestamps
    end
    add_foreign_key(:todos, :projects)
  end
end
