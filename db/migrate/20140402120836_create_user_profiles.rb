class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
       
       t.integer :user_id
       t.string :first_name
       t.string :middle_name
       t.string :last_name
       t.string :gender
       t.date :date_of_birth
       t.string :nationality
       t.integer :phone_contact

       t.timestamps
    end
  end
end
