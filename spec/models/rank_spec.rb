require 'rails_helper'

RSpec.describe Rank, type: :model do
  let(:rank) { create :rank }

  it { expect(subject).to belong_to :skill }

  it { expect(subject).to validate_presence_of :description }
  it { expect(subject).to validate_presence_of :skill }

  it 'create rank' do
    expect do
      rank
    end.to change { Rank.count }.by 1
  end
end
