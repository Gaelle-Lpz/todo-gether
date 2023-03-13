class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @tasks = Task.joins(member_tasks: { team_member: :user }).where(user: { id: current_user.id })
    @tasks_pending = Task.joins(member_tasks: { team_member: :user }).where(user: { id: current_user.id }).where(status: 0)
    @projects = Project.joins(team: { team_members: :user }).where(users: { id: current_user.id })
  end

  def profile
    @user = User.find(params[:id])
  end
end
