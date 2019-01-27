require 'rails_helper'

RSpec.describe Metric, type: :model do
  context 'validations' do
    let(:metric) { create(:metric) }

    it 'is valid with title, description and status field' do
      expect(metric).to be_valid
    end
  end
end
