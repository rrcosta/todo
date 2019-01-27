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
end
