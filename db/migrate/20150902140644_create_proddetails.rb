class CreateProddetails < ActiveRecord::Migration
  def change
    create_table :proddetails do |t|
      t.string :couleur
      t.string :pointure
      t.integer :gencode
      t.integer :stock
      t.integer :id_produit
      t.string :details

      t.timestamps null: false
    end
    add_index :proddetails, :id_produit
  end
end
