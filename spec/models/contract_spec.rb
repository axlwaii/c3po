require 'spec_helper'

describe Contract do

  context 'with associations' do
    it { expect(subject).to belong_to(:user) }
  end

  context 'with validations' do
    it { expect(subject).to validate_presence_of(:partner) }
    it { expect(subject).to validate_presence_of(:title) }
  end

end
