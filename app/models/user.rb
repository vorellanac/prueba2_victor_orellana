class User < ApplicationRecord
	# refences
	has_many :item, dependent: :destroy

	# Validaciones:
	validates_presence_of :name
	validates_presence_of :email 

	# callback
	before_validation :normalize_name, on: :create

	protected
    def normalize_name
      self.name = name.capitalize
    end
end
