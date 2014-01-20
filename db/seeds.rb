# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Pra rodar: rake db:setup
	lista_enderecos = [
		["Salgadinho", "53110110", "Olinda", "Av. Prof. Andrade Bezerra", "", "Pernambuco", "650"],
		["Piedade", "56833012", "Recife", "Rua Almirante Toronto", "A", "Pernambuco", "19"],
		["Aflitos", "29182821", "Recife", "Av. Eustaquio da Palerma", "13-5", "Pernambuco", "50"],
		["Aflitos", "54006332", "Recife", "Av. Zeus", "", "Pernambuco", "1822"],
		["Espinheiro", "53512822", "Recife", "Rua da Portela", "", "Pernambuco", "29"],
		["Varzea", "56239322", "Recife", "Av. Prof. Ruan Braga", "", "Pernambuco", "198"],
		["Espinheiro", "93370822", "Recife", "Rua das Gracas", "B", "Pernambuco", "605"],
		["Aguazinha", "12309845", "Olinda", "Av. Mercador de Sarueri", "", "Pernambuco", "560"],
		["Aguazinha", "74928364", "Olinda", "Av. Estrela do Sul", "Bloco A", "Pernambuco", "655"],
		["Toto", "29937400", "Recife", "Rua Dr. Souza Leao", "", "Pernambuco", "1123"],
		["Campo Grande", "55455410", "Recife", "Av. Copelia Ramos de Aguiar Mattos", "", "Pernambuco", "133"],
		["Varzea", "54852001", "Recife", "Av. Cidade Universitaria", "", "Pernambuco", "564"],
		["Espinheiro", "50050050", "Recife", "Rua Dona Filomena", "", "Pernambuco", "659"],		
	]

	lista_enderecos.each do |bairro, cep, cidade, logradouro, complemento, estado, numero|
		Endereco.create(bairro: bairro, cep: cep, cidade: cidade, logradouro: logradouro, complemento: complemento, estado: estado, numero: numero)
	end