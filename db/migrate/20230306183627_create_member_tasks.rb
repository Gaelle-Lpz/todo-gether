class CreateMemberTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :member_tasks do |t|
      t.references :task, null: false, foreign_key: true
      t.references :team_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
