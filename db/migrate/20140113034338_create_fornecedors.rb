class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cnpj
      t.string :telefone
      t.string :email
      t.integer :endereco_id

      t.timestamps
    end
  end
end
