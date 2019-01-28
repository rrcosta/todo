require 'rails_helper'

RSpec.describe Metric, type: :model do
  context 'validations' do
    let(:metric) { create(:metric) }

    it 'is valid with title, description and status field' do
      expect(metric).to be_valid
    end
  end

  context 'scopes' do
    describe '.ordered' do
      let(:metric) { create(:metric) }

      it 'returns in descending order' do
        metrics_created = metric.id
        metrics_bd = Metric.last.id

        expect(metrics_bd).to eql metrics_created
      end
    end

    describe '.qt_controllers' do
      it 'returns group by controller_name' do
        expect(Metric.qt_controllers).to eql({})
      end
    end

    describe '.qt_controllers' do
      it 'returns group by controller_name' do
        expect(Metric.qt_action).to eql({})
      end
    end
  end
end
