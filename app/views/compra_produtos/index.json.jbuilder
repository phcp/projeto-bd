json.array!(@compra_produtos) do |compra_produto|
  json.extract! compra_produto, :id, :data, :status, :pagamento, :quantidade, :fornecedor_id, :produto_id
  json.url compra_produto_url(compra_produto, format: :json)
end
