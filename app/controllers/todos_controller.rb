class TodosController < ApplicationController
  def index
    if params[:status]
      @todos = params[:status] == "completed" ? Todo.completed : Todo.current
    else
      @todos = Todo.all
    end
  end

  def new
    @todo = Todo.new
    @todos = Todo.all
  end

  def create
    sleep 1
    @todo = Todo.new(todo_params)
    @todos = Todo.all
    if up.validate?
      @todo.valid?
      render "new"
    elsif @todo.save
      @todo = Todo.new
      render "new"
    else
      render "new", status: :bad_request
    end
  end

  def toggle
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end

  private

  private

  def todo_params
    params.require(:todo).permit(:name, :description, :completed)
  end
end
