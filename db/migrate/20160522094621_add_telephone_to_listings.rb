class AddTelephoneToListings < ActiveRecord::Migration
  def change
    add_column :listings, :telephone, :integer
  end
end
