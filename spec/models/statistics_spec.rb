require 'rails_helper'

RSpec.describe Statistic, type: :model do
  let(:statistic) { create :statistic }

  it { expect(subject).to belong_to :skill }

  it { expect(subject).to validate_presence_of :skill }
  it { expect(subject).to validate_presence_of :title }
  it { expect(subject).to validate_presence_of :value }

  it 'create statistic' do
    expect do
      statistic
    end.to change { Statistic.count }.by 1
  end
end
