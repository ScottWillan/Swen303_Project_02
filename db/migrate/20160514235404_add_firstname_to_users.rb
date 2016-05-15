class AddFirstnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
  end
end
