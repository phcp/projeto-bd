json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :email, :endereco_id
  json.url pessoa_url(pessoa, format: :json)
end
