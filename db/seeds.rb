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
		["EPD Ltda.", "contato@epdltda.com", 9],
		["Tomas Materiais para Construcao", "tomasmateriaisparaconstrucao@gmail.com", 10],
	]

	lista_funcionarios = [
		["Gerente", "837.429.182-34", "abracadabra", 1],
		["Vendedor", "992.837.123-12", "adjailsajunior23", 2],
		["Vendedor", "920.3842.72-12", "brubat", 3],
	]

	lista_clientes = [
		[4],
		[5],
		[6],
		[7],
		[8],
		[9],
		[10],
	]

	lista_clientes_fisicos = [
		["283.127.392-12", 4],
		["029.393.392-22", 5],
		["291.203.328-22", 6],
		["123.123.123-12", 7],
		["568.622.333-45", 8],
	]

	lista_clientes_juridicos = [
		["68.755.507/0001-99", 9],
		["96.410.106/0001-32", 10],
	]

	lista_fornecedores = [
		["Fornecedor 1 Ltda.", "7263287328372", "fornecedor1@gmail.com", 11],
		["Fornecedor 2 S.A.", "8372932932", "fornecedor2@ig.com.br", 12],
		["Fornecedor 3", "091281092812", "fornecedor3@gmail.com", 13],
	]
	
	lista_telefone_pessoas = [
		["81", "88392829", 1],
		["81", "32939325", 2],
		["83", "34494933", 3],
		["81", "30457348", 4],
		["81", "92838383", 5],
		["81", "38238323", 6],
		["81", "99393933", 7],
		["85", "98374384", 8],
		["81", "83838383", 9],
		["81", "81249180", 10],
	]

	lista_telefone_fornecedores = [
		["81", "32449395", 1],
		["81", "32449750", 2],
		["81", "33424456", 3],
	]

	lista_materiaprima = [
		["Tecido", "0001", "Tecido forro interno almofadas", 27],
		["Carretel de linha", "0002", "Linha preta utilizada para costura geral", 13],
		["Agulha", "0003", "Agulha para tecidos finos", 15],
	]

	lista_produtos = [ 
		["Capa Sofa - TEKA", 30.00 , "1", "Produto de Qualidade", 40],
		["Lencol Casal - TEKA", 20.00 , "2", "Produto de Qualidade", 40],
		["Lencol Solteiro - Antonio e Filhos", 30.00 , "3", "Produto de Qualidade", 40],
		["Puff", 30.00 , "4", "Produto de Qualidade", 1],
	]

	lista_compra_produtos = [
		[Time.parse("10-10-2012"), 2, 30.00, 43, 1, 1],
		[Time.parse("11-10-2013"), 2, 30.00, 30, 2, 2],
		[Time.parse("15-2-2013"), 1, 30.00, 20, 3, 3],
	]

	lista_compra_materias_primas = [
		[Time.parse("10-10-2013"), 1, 20.50, 40.30,  27, 1, 1],
		[Time.parse("21-11-2013"), 1, 2.50, 10.30, 13, 2, 2],
		[Time.parse("01-01-2013"), 2, 19.34, 34.34,  15, 3, 3],
	]

	lista_producao = [
		[Time.parse("11-11-2013"), 10, 4, 1],
		[Time.parse("11-11-2013"), 10, 4, 2],
		[Time.parse("11-11-2013"), 10, 4, 3],
	]

	lista_solicitacao = [
		[1, Time.parse("12-12-2013"), 0.0, 300.0, 1, 4, 4],
		[1, Time.parse("01-01-2014"), 10.0, 50.0, 2, 1, 5],
	]

	lista_enderecos.each do |bairro, cep, cidade, logradouro, complemento, estado, numero|
		Endereco.create(bairro: bairro, cep: cep, cidade: cidade, logradouro: logradouro, complemento: complemento, estado: estado, numero: numero)
	end

	lista_pessoas.each do |nome, email, endereco_id|
		Pessoa.create(nome: nome, email: email, endereco_id: endereco_id)
	end

	lista_funcionarios.each do |cargo, cpf, senha, pessoa_id|
		Funcionario.create(cargo: cargo, cpf: cpf, senha: senha, pessoa_id: pessoa_id)
	end

	lista_clientes.each do |pessoa_id|
		Cliente.create(pessoa_id: pessoa_id)
	end

	lista_clientes_fisicos.each do |cpf, cliente_id|
		ClienteFisico.create(cpf: cpf, cliente_id: cliente_id)
	end

	lista_clientes_juridicos.each do |cnpj, cliente_id|
		ClienteJuridico.create(cnpj: cnpj, cliente_id: cliente_id)
	end

	lista_fornecedores.each do |nome, cnpj, email, endereco_id|
		Fornecedor.create(nome: nome, cnpj: cnpj, email: email, endereco_id: endereco_id)
	end

	lista_telefone_pessoas.each do |ddd, telefone, pessoa_id|
		TelefonePessoa.create(ddd: ddd, telefone: telefone, pessoa_id: pessoa_id)
	end

	lista_telefone_fornecedores.each do |ddd, telefone, fornecedor_id|
		TelefoneFornecedor.create(ddd: ddd, telefone: telefone, fornecedor_id: fornecedor_id)
	end

	lista_materiaprima.each do |nome, codigo, descricao, quantidade|
		MateriaPrima.create(nome: nome, codigo: codigo, descricao: descricao, quantidade: quantidade)
	end

	lista_produtos.each do |nome, preco, codigo, descricao, quantidade|
		Produto.create(nome: nome, preco: preco, codigo:codigo, descricao:descricao, quantidade:quantidade)
	end

	lista_producao.each do |data, quantidade, produto_id, materiaprima_id|
		Producao.create(data: data, quantidade: quantidade, produto_id: produto_id, materiaprima_id: materiaprima_id)
	end

	lista_compra_produtos.each do | data, status, pagamento, quantidade, fornecedor_id, produto_id |
		CompraProduto.create(data: data, status: status, pagamento:pagamento, quantidade:quantidade, fornecedor_id: fornecedor_id, produto_id: produto_id)
	end

	lista_compra_materias_primas.each do |data, status, pagamento, preco, quantidade, fornecedor_id, materiaprima_id|
		CompraMateriaPrima.create(data: data, status: status, pagamento: pagamento, preco: preco, quantidade: quantidade, fornecedor_id: fornecedor_id, materiaprima_id: materiaprima_id)
	end

	lista_solicitacao.each do |status, data, desconto, pagamento, cliente_id, produto_id, pessoa_id|
		Solicitacao.create(status: status, data: data, desconto: desconto, pagamento: pagamento, cliente_id: cliente_id, produto_id: produto_id, pessoa_id: pessoa_id)
	end