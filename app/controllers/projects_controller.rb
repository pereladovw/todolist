class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def update
    @todo = Todo.find(params.require(:todo).permit(:id)["id"])
    if @todo.isCompleted
      @todo.update(isCompleted: false)
    else @todo.update(isCompleted: true)
    end
    redirect_to root_path


  end

  def create
    @project = Project.find(project_params["project_id"])
    @todo = @project.todos.create(todo_params)
    redirect_to root_path
  end




  private
  def todo_params
    params.require(:todo).permit(:id, :text)
  end

  def project_params
    params.require(:todo).permit(:project_id, :isCompleted => false)
  end

end
