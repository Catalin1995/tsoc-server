require 'rails_helper'

RSpec.describe DungeonHashesController, type: :controller do
  render_views

  describe 'GET index' do
    it 'when exist' do
      user = create :user
      dungeon = create :dungeon
      dungeon_hash = create :dungeon_hash, user_id: user.id, dungeon_id: dungeon.id

      get :index, dungeon_id: dungeon.id, student_id: user.id, format: :json

      expect(json['code']).to eq(200)
      expect(json['body']['id']).to eq(dungeon_hash.id)
      expect(json['body']['user_id']).to eq(user.id)
      expect(json['body']['dungeon_id']).to eq(dungeon.id)
      expect(json['body']['dungeon_hash']).to eq('_asd')
    end

    it 'when not exist' do
      dungeon = create :dungeon
      user = create :user
      expect do
        get :index, dungeon_id: dungeon.id, student_id: user.id, format: :json
        expect(json['code']).to eq(200)
        expect(json['body']['dungeon_id']).to eq(dungeon.id)
        expect(json['body']['user_id']).to eq(user.id)
        expect(json['body']['dungeon_hash']).to eq('_')
      end.to change{ DungeonHash.count }.by (1)
    end

    it 'when user not exist' do
      user = create :user
      expect do
        get :index, dungeon_id: -1, student_id: user.id, format: :json
        expect(json['code']).to eq(200)
        expect(json['body']).to eq('')
      end.to change{ DungeonHash.count }.by (0)
    end

    it 'when dungeon not exist' do
      dungeon = create :dungeon
      expect do
        get :index, dungeon_id: dungeon.id, student_id: -1, format: :json
        expect(json['code']).to eq(200)
        expect(json['body']).to eq('')
      end.to change{ DungeonHash.count }.by (0)
    end
  end
end
