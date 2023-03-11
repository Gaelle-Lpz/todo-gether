class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :member_tasks
  has_many :tasks, through: :member_tasks
end
