module Api
  module V1
    class TodoListsController < ApplicationController
      before_action :set_todo_list, only: [:show]

      # GET /todo_lists
      def index
        @todo_lists = TodoList.all
        render json: @todo_lists
      end

      # GET /todo_lists/1
      def show
        render json: @todo_list
      end

      private

      def set_todo_list
        @todo_list = TodoList.find(params[:id])
      end      
    end
  end
end