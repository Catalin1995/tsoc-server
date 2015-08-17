require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link) { create :link }

  it { expect(subject).to belong_to :skill }

  it { expect(subject).to validate_presence_of :label }
  it { expect(subject).to validate_presence_of :url }
  it { expect(subject).to validate_presence_of :skill }

  it 'create link' do
    expect do
      link
    end.to change { Link.count }.by 1
  end
end
