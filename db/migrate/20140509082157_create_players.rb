class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :type
      t.string :name
      t.string :club
      t.decimal :batting_average, precision: 4, scale: 3

      t.timestamps
    end
  end
end
