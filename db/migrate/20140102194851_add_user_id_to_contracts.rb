class AddUserIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :user_id, :integer
  end

  def self.down
    remove_column :contracts, :user_id
  end
end
