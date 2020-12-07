class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :rank
      t.integer :numAlbs

      t.timestamps
    end
  end
end
