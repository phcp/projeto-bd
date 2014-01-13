class CreateSolicitacaos < ActiveRecord::Migration
  def change
    create_table :solicitacaos do |t|
      t.integer :status
      t.datetime :data
      t.float :desconto
      t.float :pagamento
      t.integer :cliente_id
      t.integer :produto_id
      t.integer :pessoa_id

      t.timestamps
    end
  end
end
