json.array!(@compra_materia_primas) do |compra_materia_prima|
  json.extract! compra_materia_prima, :id, :data, :status, :pagamento, :preco, :quantidade, :fornecedor_id, :materiaprima_id
  json.url compra_materia_prima_url(compra_materia_prima, format: :json)
end
