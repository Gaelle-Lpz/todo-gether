class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :member_task

  validates :user_role, presence: true
end
