class CompraProduto < ActiveRecord::Base
	has_one :fornecedor
	has_one :produto
end
