class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :nom
      t.string :marque
      t.decimal :prix_ha
      t.decimal :remise
      t.decimal :coef
      t.decimal :prix
      t.string :justif_remise
      t.timestamp :date_remise
      t.string :categorie
      t.string :saison
      t.integer :annee_s

      t.timestamps null: false
    end
  end
end
