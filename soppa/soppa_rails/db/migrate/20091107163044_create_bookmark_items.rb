class CreateBookmarkItems < ActiveRecord::Migration
  def self.up
    create_table :bookmark_items do |t|

      t.references :bookmark
      t.references :recipe

      t.timestamps
    end
  end

  def self.down
    drop_table :bookmark_items
  end
end
