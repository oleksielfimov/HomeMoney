class AddContractorToOperations < ActiveRecord::Migration
  def change
    add_column :operations, :contractor, :string

  end
end
