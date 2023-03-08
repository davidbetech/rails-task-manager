class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @tasks = Task.find(params[:id])

  end

  def new
    @new_task = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to tasks_path(@tasks)
  end
    private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
