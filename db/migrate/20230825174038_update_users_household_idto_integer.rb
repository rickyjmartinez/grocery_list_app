class UpdateUsersHouseholdIdtoInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :household_id, "numeric USING CAST(household_id AS numeric)"
    change_column :users, :household_id, :integer
  end
end
