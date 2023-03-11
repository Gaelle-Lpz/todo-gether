class AddDefaultValueToTeamMember < ActiveRecord::Migration[7.0]
  def change
    change_column :team_members, :user_role, :boolean, default: false
  end
end
