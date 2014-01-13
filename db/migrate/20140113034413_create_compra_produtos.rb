class CreateCompraProdutos < ActiveRecord::Migration
  def change
    create_table :compra_produtos do |t|
      t.datetime :data
      t.integer :status
      t.float :pagamento
      t.integer :quantidade
      t.integer :fornecedor_id
      t.integer :produto_id

      t.timestamps
    end
  end
end
