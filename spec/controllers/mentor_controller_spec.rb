require 'rails_helper'

RSpec.describe MentorController, type: :controller do
  render_views
  describe 'GET index' do
    it 'when does not exist items in db' do
      get :index, format: :json
      expect(json[:code]).to eq(200)
      expect(json[:body]).to eq([])
    end

    it 'when exist items in db' do
      create :user, mentor: true, email: 'admin@example.com'
      create :user, mentor: false, email: 'test@test.com'
      create :user, mentor: true, email: 'test@example.com'

      get :index, format: :json
      expect(json[:code]).to eq(200)
      expect(json[:body].count).to eq(2)
    end
  end

  describe 'GET show' do
    it 'when id does not exist' do
      expect do
        get :show, id: -1
      end.to raise_error ActiveRecord::RecordNotFound
    end

    it 'when id exist' do
      mentor = create :user, mentor: true, email: 'admin@example.com'
      get :show, id: mentor.id, format: :json
      expect(json['code']).to eq(200)
      expect(json['body']['id']).to eq(mentor.id)
      expect(json['body']['email']).to eq(mentor.email)
      expect(json['body']['name']).to eq(mentor.name)
    end

    it 'when id existbut is not mentor' do
      mentor = create :user, mentor: false, email: 'admin@example.com'
      get :show, id: mentor.id, format: :json
      expect(json['code']).to eq(200)
      expect(json['body']['id']).to eq(mentor.id)
      expect(json['body']['email']).to eq(mentor.email)
      expect(json['body']['name']).to eq(mentor.name)
    end
  end
end
