require 'rails_helper'

RSpec.describe Talent, type: :model do
  let(:talent) { create :talent }

  it { expect(subject).to belong_to :skill }

  it { expect(subject).to validate_presence_of :description }
  it { expect(subject).to validate_presence_of :skill }

  it 'create talent' do
    expect do
      talent
    end.to change { Talent.count }.by 1
  end
end
