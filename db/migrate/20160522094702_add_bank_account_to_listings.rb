class AddBankAccountToListings < ActiveRecord::Migration
  def change
    add_column :listings, :bank_account, :string
  end
end
