json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :cargo, :cpf, :senha, :pessoa_id
  json.url funcionario_url(funcionario, format: :json)
end
