require 'rails_helper'

RSpec.describe User do
  describe 'attributes' do
    it 'should include the :name attribute' do
      expect(subject.attributes).to include("name")
    end
  end
end
