require 'spec_helper'

describe Contract do

  context 'with validations' do
    it { expect(subject).to validate_presence_of(:partner) }
    it { expect(subject).to validate_presence_of(:title) }
  end

end
