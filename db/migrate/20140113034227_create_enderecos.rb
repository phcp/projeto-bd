class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :logradouro
      t.string :complemento
      t.string :estado
      t.string :numero

      t.timestamps
    end
  end
end
