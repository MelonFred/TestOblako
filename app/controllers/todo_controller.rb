class TodoController < ApplicationController

  def index
    @project = Project.all
  end

  def update
  end

  def create
    @todo = Todo.new(params_add)
    @todo.isCompleted = false
    @todo.save
    redirect_to(root_path)
  end

  private
  def params_add
    params.require(:todo).permit(:text, :project_id)
  end
end
