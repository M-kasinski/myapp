json.array!(@produits) do |produit|
  json.extract! produit, :id, :nom, :marque, :prix_ha, :remise, :coef, :prix, :justif_remise, :date_remise, :categorie, :saison, :annee_s
  json.url produit_url(produit, format: :json)
end
