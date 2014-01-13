json.array!(@fornecedors) do |fornecedor|
  json.extract! fornecedor, :id, :nome, :cnpj, :telefone, :email, :endereco_id
  json.url fornecedor_url(fornecedor, format: :json)
end
