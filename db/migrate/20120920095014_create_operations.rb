class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :mark
      t.decimal.round(2) :amount
      t.string :purpose
      t.string :acct
      t.date :date
	  	  
      t.timestamps
    end
  end	
end
