class AddColumnsToUserDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :user_details, :gender, :string
    add_column :user_details, :company, :string
    add_column :user_details, :address, :string
  end
end
