class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :account
      t.decimal :ballance

      t.timestamps
    end
  end
end
