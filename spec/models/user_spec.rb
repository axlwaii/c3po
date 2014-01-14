require 'spec_helper'

describe User do
  context 'with validations' do
    it 'allows only one robin' do
      User.delete_all
      robin = User.new(email: "foo@bar.baz", password: "boobasfaDfdfs")
      robin.save!

      expect(User.count).to eql 1
      visitor = User.new(email: "blorgh@blurgh.blargh", password: "sdfjsljlkskjsds")
      expect(visitor).not_to be_valid
    end
  end
end
