class Producao < ActiveRecord::Base
	has_one :produto
	has_one :materiaprima
end
