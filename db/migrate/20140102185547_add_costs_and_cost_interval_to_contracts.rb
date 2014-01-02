class AddCostsAndCostIntervalToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :costs, :integer
    add_column :contracts, :cost_interval, :string
  end

  def self.down
    remove_column :contracts, :costs
    remove_column :contracts, :costs_interval
  end
end
