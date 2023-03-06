class Team < ApplicationRecord
  has_many :project
  has_many :team_member

  validates :name, presence: true
end
