class CompraMateriaPrima < ActiveRecord::Base
	has_one :fornecedor
	has_one :materiaprima
end
