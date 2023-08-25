class AddAdmintoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean #shouldve default to 'false' here
  end
end
