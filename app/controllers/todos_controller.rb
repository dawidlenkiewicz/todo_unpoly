class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def form
  end
end
