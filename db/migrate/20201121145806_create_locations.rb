class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :nome
      t.string :acronym
      t.string :maincompany

      t.timestamps
    end
  end
end