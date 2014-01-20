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

	lista_pessoas = [
		["Ermano Ardiles Arruda", "eaa3@cin.ufpe.br", 1],
		["Ingrid Guimaraes", "ig@ig.com.br", 2],
		["Bruno Batista da Silva", "brunobat@gmail.com", 3],
		["Kaua Rocha Costa", "kauas@gmail.com", 4],
		["Giovana Carvalho Rodrigues", "gio121212@gmail.com", 5],
		["Nicolas Correia Cavalcanti", "nickool@yahoo.com.br", 6],
		["Yasmin Silva Correia", "correia_yasmins@aol.com", 7],
		["Giovana Ribeiro Pinto", "gioovana@linuxmail.com", 8],
		["Joao Cavalcanti Araujo", "johncavalcantii66@gmail.com", 9],
		["Tomas Cunha Santos", "cibern3t1c_b0y@gmail.com", 10],
	]

	lista_fornecedores = [
		["Fornecedor 1 Ltda.", "7263287328372", "fornecedor1@gmail.com", 11],
		["Fornecedor 2 S.A.", "8372932932", "fornecedor2@ig.com.br", 12],
		["Fornecedor 3", "091281092812", "fornecedor3@gmail.com", 13],
	]
	
	lista_enderecos.each do |bairro, cep, cidade, logradouro, complemento, estado, numero|
		Endereco.create(bairro: bairro, cep: cep, cidade: cidade, logradouro: logradouro, complemento: complemento, estado: estado, numero: numero)
	end

	lista_pessoas.each do |nome, email, endereco_id|
		Pessoa.create(nome: nome, email: email, endereco_id: endereco_id)
	end

	lista_fornecedores.each do |nome, cnpj, email, endereco_id|
		Fornecedor.create(nome: nome, cnpj: cnpj, email: email, endereco_id: endereco_id)
	end