class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.integer :endereco_id

      t.timestamps
    end
  end
end
