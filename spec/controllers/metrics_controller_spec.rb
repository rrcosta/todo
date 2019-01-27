require 'rails_helper'

RSpec.describe MetricsController, type: :controller do

  describe 'GET #index' do
    let(:metric) { create(:metric) }

    it " returns a success response" do
      get :index, params: { }
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let(:metric) { create(:metric) }

    it " returns a success response" do
      get :show, params: { id: metric.to_param }
      expect(response).to be_successful
    end
  end

  describe 'Metric Params' do
    context "with valid params" do
      let(:metric_params) { FactoryBot.attributes_for(:metric) }

      it 'creates a new metric' do
        expect(metric_params).to eql(
          action_name: "view",
          controller_name: "TodoList",
          db_runtime: 11.3,
          time_process: 28.5,
          view_runtime: 17.2,
        )

      end
    end
  end
end
