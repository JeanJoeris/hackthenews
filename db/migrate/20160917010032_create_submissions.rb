class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.references :contact, foreign_key: true
      t.references :pitch, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
