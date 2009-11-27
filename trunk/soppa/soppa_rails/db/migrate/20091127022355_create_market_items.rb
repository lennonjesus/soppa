class CreateMarketItems < ActiveRecord::Migration
  def self.up
    create_table :market_items do |t|
      t.references :ingredient
      t.references :market
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :market_items
  end
end
