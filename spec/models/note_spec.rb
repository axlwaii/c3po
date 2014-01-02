require 'spec_helper'

describe Note do

  context 'with validations' do
    it { expect(subject).to validate_presence_of(:content) }
  end

end
