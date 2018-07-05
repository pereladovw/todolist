class TodosController < ApplicationController
  def update

  end

  def create
    @todo = Todo.find(todo_params)
    if @todo.isCompleted
      @todo.update(isCompleted: false)
    else @todo.update(isCompleted: true)
    end
    redirect_to root_path
  end

  def index

  end

  private
  def todo_params
    params.require(:todo).permit(:id)["id"]
  end
end