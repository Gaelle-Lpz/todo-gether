class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  before_action :set_project, only: %i[new create]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.project = @project
    @task.save
    redirect_to project_path(@project)
  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
    redirect_to project_path(@task.project), status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :status, :date, :project_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end
