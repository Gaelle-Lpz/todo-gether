class Task < ApplicationRecord
  belongs_to :project
  has_many :member_task

  validates :title, presence: true
  validates :detail, presence: true
  validates :date, presence: true
  enum status: %i[pending in_progress completed late paused]
end
