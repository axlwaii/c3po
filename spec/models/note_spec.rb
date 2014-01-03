require 'spec_helper'

describe Note do

  context 'with associations' do
    it { expect(subject).to belong_to(:user) }
  end

  context 'with validations' do
    it { expect(subject).to validate_presence_of(:content) }
  end

end
