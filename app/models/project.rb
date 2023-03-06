class Project < ApplicationRecord
  belongs_to :team
  has_many :task

  validates :name, presence: true
end
