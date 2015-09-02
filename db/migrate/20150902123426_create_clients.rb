class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :tel
      t.string :ville
      t.string :cp

      t.timestamps null: false
    end
  end
end
