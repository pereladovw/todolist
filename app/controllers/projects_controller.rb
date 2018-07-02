class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
  end

  def create
    @project = Project.find(project_params["project_id"])
    @todo = @project.todos.create(todo_params)
    redirect_to root_path
  end


  private
  def todo_params
    params.require(:todo).permit(:text)
  end

  def project_params
    params.require(:todo).permit(:project_id)
  end
end
