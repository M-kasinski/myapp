require 'test_helper'

class ProduitsControllerTest < ActionController::TestCase
  setup do
    @produit = produits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produit" do
    assert_difference('Produit.count') do
      post :create, produit: { annee_s: @produit.annee_s, categorie: @produit.categorie, coef: @produit.coef, date_remise: @produit.date_remise, justif_remise: @produit.justif_remise, marque: @produit.marque, nom: @produit.nom, prix: @produit.prix, prix_ha: @produit.prix_ha, remise: @produit.remise, saison: @produit.saison }
    end

    assert_redirected_to produit_path(assigns(:produit))
  end

  test "should show produit" do
    get :show, id: @produit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produit
    assert_response :success
  end

  test "should update produit" do
    patch :update, id: @produit, produit: { annee_s: @produit.annee_s, categorie: @produit.categorie, coef: @produit.coef, date_remise: @produit.date_remise, justif_remise: @produit.justif_remise, marque: @produit.marque, nom: @produit.nom, prix: @produit.prix, prix_ha: @produit.prix_ha, remise: @produit.remise, saison: @produit.saison }
    assert_redirected_to produit_path(assigns(:produit))
  end

  test "should destroy produit" do
    assert_difference('Produit.count', -1) do
      delete :destroy, id: @produit
    end

    assert_redirected_to produits_path
  end
end
