class MemberTask < ApplicationRecord
  belongs_to :task
  belongs_to :team_member
end
