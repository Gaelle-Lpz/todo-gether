class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @team_member = TeamMember.find_by(user: current_user)
  end
end
