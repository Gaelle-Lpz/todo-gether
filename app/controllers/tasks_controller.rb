class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.joins(member_tasks: { team_member: :user }).where(user: { id: current_user.id })
    @tasks_pending = Task.joins(member_tasks: { team_member: :user }).where(user: { id: current_user.id }).where(status: 0)
    @projects = Project.joins(team: { team_members: :user }).where(users: { id: current_user.id })
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :status, :date)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
