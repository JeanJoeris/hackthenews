class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.string :phone_number
      t.string :email_address
      t.string :typ
      t.string :date_of_last_contact
      t.text :notes
      t.timestamps 
    end
  end
end
