json.array!(@solicitacaos) do |solicitacao|
  json.extract! solicitacao, :id, :status, :data, :desconto, :pagamento, :cliente_id, :produto_id, :pessoa_id
  json.url solicitacao_url(solicitacao, format: :json)
end
