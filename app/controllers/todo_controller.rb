class TodoController < ApplicationController

  def index
    @project = Project.includes(:todos)
    respond_to do |format|
      format.html {}
      format.json { render :json => @project}
    end
  end

  

  def update
    @todo_upd = Todo.find(params_upd)
    if @todo_upd.isCompleted == "f"
      @todo_upd.isCompleted = true
    else
      @todo_upd.isCompleted = false
    end
    @todo_upd.save
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

  def params_upd
    params[:id]
  end
end
