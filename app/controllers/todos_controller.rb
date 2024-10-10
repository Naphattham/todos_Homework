class TodosController < ApplicationController
  def index
    @todos_incomplete = Todo.where(completed: false)
    @todos_complete = Todo.where(completed: true)
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render :index
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo = Todo.find(params[:id])
    @todo.update(completed: true)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
