require 'rails_helper'

RSpec.describe Dungeon, type: :model do
  let(:dungeon) { create :dungeon }

  it { expect(subject).to have_many :skills }
  it { expect(subject).to belong_to :dungeon_hash }

  it { expect(subject).to validate_presence_of :title }
  it { expect(subject).to validate_presence_of :dungeon_hash }

  it 'create dungeon' do
    expect do
      dungeon
    end.to change { Dungeon.count }.by 1
  end

  it 'create without description' do
    expect do
      create :dungeon, description: ''
    end.to change { Dungeon.count }.by 1
  end
end
