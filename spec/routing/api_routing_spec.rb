require 'rails_helper'

RSpec.describe 'Api Routing', type: :routing do
  describe 'skills' do
    it 'routes to #index' do
      expect(get: '/api/skills').to route_to(controller: 'skills', action: 'index', format: :json)
    end
  end
end
