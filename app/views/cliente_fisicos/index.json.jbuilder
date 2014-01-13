json.array!(@cliente_fisicos) do |cliente_fisico|
  json.extract! cliente_fisico, :id, :cpf, :cliente_id
  json.url cliente_fisico_url(cliente_fisico, format: :json)
end
