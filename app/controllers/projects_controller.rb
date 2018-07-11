class ProjectsController < ApplicationController

  skip_before_action :verify_authenticity_token


  def index
    @projects = Project.all
    respond_to do |format|

      format.html # show.html.erb
      format.json { render json: @projects }

    end
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
    params.require(:todo).permit(:project_id)
  end

end
