json.array!(@telefone_pessoas) do |telefone_pessoa|
  json.extract! telefone_pessoa, :id, :ddd, :telefone, :pessoa_id
  json.url telefone_pessoa_url(telefone_pessoa, format: :json)
end
