class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :detail
      t.references :project, null: false, foreign_key: true
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end
