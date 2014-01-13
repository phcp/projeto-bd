json.array!(@producaos) do |producao|
  json.extract! producao, :id, :data, :quantidade, :produto_id, :materiaprima_id
  json.url producao_url(producao, format: :json)
end
