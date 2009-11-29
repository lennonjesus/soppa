class CreateMarkets < ActiveRecord::Migration
  def self.up
    create_table :markets do |t|
      t.string :name
      t.text :about
      t.string :cnpj
      t.boolean :active
      t.references :city
      t.references :user
      t.string :adress
      t.string :site_url

      t.timestamps
    end
  end

  def self.down
    drop_table :markets
  end
end
