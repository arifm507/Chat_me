class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.datetime :dob
      t.string :about
      t.references :user

      t.timestamps
    end
  end
end

