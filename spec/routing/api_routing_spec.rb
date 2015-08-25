require 'rails_helper'

RSpec.describe 'Api Routing', type: :routing do
  describe 'mentors' do
    it 'routes to #index' do
      expect(get: '/api/mentors').to route_to(controller: 'mentors', action: 'index', format: :json)
    end

    it 'routes to #index' do
      expect(get: '/api/mentors').to route_to(controller: 'mentors', action: 'index', format: :json)
    end
  end

  describe 'students' do
    it 'routes to #index' do
      expect(get: '/api/students').to route_to(controller: 'students', action: 'index', format: :json)
    end

    it 'routes to #show' do
      expect(get: '/api/students').to route_to(controller: 'students', action: 'index', format: :json)
    end
  end

  describe 'dungeons' do
    it 'routes to #show' do
      expect(get: '/api/dungeons/1').to route_to(controller: 'dungeons', action: 'show', format: :json, id: '1')
    end
  end

  describe 'dungeon_hashes' do
    it 'routes to #index' do
      expect(get: '/api/students/1/dungeons/1/dungeon_hashes').to route_to(controller: 'dungeon_hashes', action: 'index', format: :json, student_id: '1', dungeon_id: '1')
    end

    it 'routes to #update' do
      expect(put: '/api/students/1/dungeons/1/dungeon_hashes/1').to route_to(controller: 'dungeon_hashes', dungeon_id: '1', student_id: '1', id: '1', format: :json, action: 'update')
    end
  end
end
