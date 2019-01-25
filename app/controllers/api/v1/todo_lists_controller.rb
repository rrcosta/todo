module Api
  module V1
    class TodoListsController < ApplicationController

      # GET /todo_lists
      def index
        @todo_lists = TodoList.all
    
        render json: @todo_lists
      end

    end
  end
end