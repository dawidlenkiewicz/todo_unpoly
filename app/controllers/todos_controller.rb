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
end
