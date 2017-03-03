class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :age_type
      t.string :gender
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :user, index: true
      t.string :nickname
      t.string :relation

      t.timestamps
    end
  end
end
