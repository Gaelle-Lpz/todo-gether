class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.joins(team: { team_members: :user }).where(users: { id: current_user.id })
  end

  def new
    @project = Project.new
  end

  def show
    @tasks = Task.joins(:project).where(projects: { id: @project })
    @users = User.joins(team_members: { member_tasks: { task: :project } }).where(tasks: { project_id: @project.id }).distinct
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to project_path(@project)
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project.destroy
    redirect_to projects_path, status: :see_other
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
