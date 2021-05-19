class CreateLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :game
      t.integer :owner_id

      t.timestamps
    end
  end
end
