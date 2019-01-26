require 'rails_helper'

RSpec.describe TodoList, type: :model do
  context 'validations' do
    let(:todo_list) { create(:todo_list) }

    it 'is valid with title, description and status field' do
      expect(todo_list).to be_valid
    end

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end

  context 'scopes' do
    describe '.pending' do
      let!(:todo_pending) { create(:todo_list, status: false) }
      let!(:todo_completed) { create(:todo_list, status: true) }

      it 'returns all todolist pending' do
        expect(
          described_class.all.pending.size
        ).to eql(1)
      end
    end

    describe '.completed' do
      let!(:todo_pending) { create(:todo_list, status: false) }
      let!(:todo_completed) { create(:todo_list, status: true) }

      it 'returns all todolist pending' do
        expect(
          described_class.all.completed.size
        ).to eql(1)
      end
    end

    describe 'default scopes' do
      let!(:todo_pending) { create(:todo_list, status: false) }
      let!(:todo_completed) { create(:todo_list, status: true) }

      it 'returns all todolist pending' do
        expect(
          described_class.all.size
        ).to eql(2)
      end
    end


  end
end
