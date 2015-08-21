require 'rails_helper'

RSpec.describe DungeonHash, type: :model do
  let(:dungeon_hash) { create :dungeon_hash }

  it { expect(subject).to belong_to :dungeon }

  it { expect(subject).to validate_presence_of :user }
  it { expect(subject).to validate_presence_of :dungeon }
  it { expect(subject).to validate_presence_of :dungeon_hash }

  it 'create dungeon_hash' do
    expect do
      dungeon_hash
    end.to change { DungeonHash.count }.by 1
  end

  it 'create dungeon when user does not exist' do
    expect do
      create :dungeon_hash, user_id: -1
    end.to raise_error ActiveRecord::RecordInvalid
  end

  it 'create dungeon when dungeon does not exist' do
    expect do
      create :dungeon_hash, dungeon_id: -1
    end.to raise_error ActiveRecord::RecordInvalid
  end
end
