module Api
  module V1
    class TodoListsController < ApplicationController
      before_action :set_todo_list, only: [:show, :create]
      skip_before_action :verify_authenticity_token

      # GET /todo_lists
      def index
        @todo_lists = TodoList.all
        render json: @todo_lists
      end

      # GET /todo_lists/1
      def show
        render json: @todo_list
      end

      # GET /todo_lists/new
      def new
        @todo_list = TodoList.new
      end

      # POST /todo_lists
      def create
        @todo_list = TodoList.new(todo_list_params)

        respond_to do |format|
          if @todo_list.save
            format.json { render :show, status: :created, location: @todo_list }
          else
            format.json { render json: @todo_list.errors, status: :unprocessable_entity }
          end
        end
      end

      private

      def set_todo_list
        @todo_list = TodoList.find(params[:id])
      end

      def todo_list_params
        params.require(:todo_list).permit(:title, :description, :status)
      end

    end
  end
end