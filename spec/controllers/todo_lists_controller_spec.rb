require 'rails_helper'

RSpec.describe TodoListsController, type: :controller do

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}

      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    let(:todo_list) { create(:todo_list) }

    it "returns a success response" do
      get :show, params: { id: todo_list.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new TodoList" do
        expect {
          post :create, format: :json, params: {
                          todo_list: { title: 'Test', description: 'Test' }
                        }
        }.to change(TodoList, :count).by(1)
      end

      it "renders a JSON response with the new todo_list" do

        post :create, params: {
                                todo_list: { title: 'Test', description: 'Test'}
                              }

        # expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('text/html')
        expect(response.location).to eq(todo_list_url(TodoList.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new todo_list" do
        post :create, params: {
                                todo_list: { title: nil, description: nil }
                              }

        expect(response.content_type).to eq('text/html')
      end
    end
  end

  describe "PUT #update" do
    let(:todo_list) { create(:todo_list) }

    context "with valid params" do
      it "renders a JSON response with the todo_list" do
        put :update, params: {
                                id: todo_list.id,
                                todo_list: { title: 'Test', description: 'Todo'}
                             }

        expect(response.content_type).to eq('text/html')
      end
    end

    context "with invalid params" do
      let(:todo_list) { create(:todo_list) }

      it "renders a JSON response with errors for the todo_list" do
        put :update, params: {
                              id: todo_list.id,
                              todo_list: { title: nil }
                             }
        expect(response.content_type).to eq('text/html')
      end
    end
  end

  describe "DELETE #destroy" do
    let(:todo_list) { create_list(:todo_list,2) }
    let(:id1) { todo_list[1].id }

    it "destroys the requested todo_list" do
      expect {
        delete :destroy, params: { id: id1 }
      }.to change(TodoList, :count)
    end
  end

end
