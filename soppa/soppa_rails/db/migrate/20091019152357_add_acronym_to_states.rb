class AddAcronymToStates < ActiveRecord::Migration
  def self.up
    add_column :states, :acronym, :string
  end

  def self.down
    remove_column :states, :acronym
  end
end
