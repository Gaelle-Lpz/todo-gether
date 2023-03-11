class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :member_task
end
