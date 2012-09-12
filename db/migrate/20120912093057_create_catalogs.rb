class CreateCatalogs < ActiveRecord::Migration
  def self.up
    create_table :catalogs do |t|
      t.string :name
      t.integer :price
      t.string :account
      t.date :date

      t.timestamps
    end
  def self.down
    drop_table :catalogs
   end
  end
end
