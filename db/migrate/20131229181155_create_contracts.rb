class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string    :title
      t.string    :partner
      t.datetime  :started_at
      t.datetime  :ended_at
      t.text      :description
    end
  end

  def self.down
    drop_table :contracts
  end
end
