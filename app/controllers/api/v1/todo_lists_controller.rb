module Api
  module V1
    class TodoListsController < ApplicationController
      before_action :set_todo_list, only: [:show, :edit, :update, :destroy]
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

      # GET /todo_lists/1/edit
      def edit
      end

      # PATCH/PUT /todo_lists/1
      # PATCH/PUT /todo_lists/1.json
      def update
        if @todo_list.update(todo_list_params)
          # render :show, status: :ok, location: @todo_list
          render json: @todo_list, status: :ok
        else
          render json: @todo_list.errors, status: :unprocessable_entity
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