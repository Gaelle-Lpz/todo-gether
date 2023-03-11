class Project < ApplicationRecord
  belongs_to :team
  has_many :task
  has_many :team_members, through: :team

  validates :name, presence: true
end
