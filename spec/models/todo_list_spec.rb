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
end
