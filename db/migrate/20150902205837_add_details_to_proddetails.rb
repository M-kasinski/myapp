class AddDetailsToProddetails < ActiveRecord::Migration
  def change
  	remove_column :proddetails, :id_produit
    add_column :proddetails, :id_produit, :integer
  end
  add_index :proddetails, :id_produit
end