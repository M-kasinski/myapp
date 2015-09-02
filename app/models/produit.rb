class Produit < ActiveRecord::Base
	validates :nom, presence: true
end
