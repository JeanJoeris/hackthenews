class AddTypeAndPhotoToContacts < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :typ, :type
    add_column :contacts, :photo_url, :string
  end
end
