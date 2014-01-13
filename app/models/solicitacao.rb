class Solicitacao < ActiveRecord::Base
	has_one :pessoa
	has_one :produto
end
