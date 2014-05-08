class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :type
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
