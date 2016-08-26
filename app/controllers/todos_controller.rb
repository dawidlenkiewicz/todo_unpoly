class TodosController < ApplicationController
  def index
    if params[:status]
      @todos = params[:status] == "completed" ? Todo.completed : Todo.current
    else
      @todos = Todo.all
    end
  end

  def form
  end

  def toggle
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end

  private

  def todo_params
    params.require(:todo).permit(:completed)
  end
end
