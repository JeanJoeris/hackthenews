class CreatePitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pitches do |t|
      t.string :title
      t.text :body
      t.string :status

      t.timestamps
    end
  end
end
