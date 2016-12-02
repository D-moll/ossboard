require 'spec_helper'
require_relative '../../../../apps/web/controllers/tasks/new'

RSpec.describe Web::Controllers::Tasks::New do
  let(:action) { described_class.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response).to be_success
  end

  describe 'expose' do
    context '#task' do
      it 'returns task by id' do
        action.call(params)
        expect(action.task).to eq Task.new
      end
    end
  end
end
