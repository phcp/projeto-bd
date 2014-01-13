json.array!(@cliente_juridicos) do |cliente_juridico|
  json.extract! cliente_juridico, :id, :cnpj, :cliente_id
  json.url cliente_juridico_url(cliente_juridico, format: :json)
end
