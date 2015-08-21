require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { create :skill }

  it { expect(subject).to have_many :statistics }
  it { expect(subject).to have_many :links }
  it { expect(subject).to have_many :ranks }
  it { expect(subject).to have_many :talents }
  it { expect(subject).to have_many :dependes }
  it { expect(subject).to belong_to :dungeon }

  it { expect(subject).to validate_presence_of :title }
  it { expect(subject).to validate_presence_of :description }
  it { expect(subject).to validate_presence_of :maxPoints }
  it { expect(subject).to validate_presence_of :dungeon }

  it 'create skill' do
    expect do
      skill
    end.to change { Skill.count }.by 1
  end
end
