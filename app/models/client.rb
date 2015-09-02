class Client < ActiveRecord::Base
	validates :nom, presence: true
end
