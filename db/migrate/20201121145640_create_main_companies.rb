class CreateMainCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :main_companies do |t|
      t.string :nome
      t.float :cnpj
      t.string :brand

      t.timestamps
    end
  end
end
