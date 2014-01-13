class CreateCompraMateriaPrimas < ActiveRecord::Migration
  def change
    create_table :compra_materia_primas do |t|
      t.datetime :data
      t.integer :status
      t.float :pagamento
      t.float :preco
      t.integer :quantidade
      t.integer :fornecedor_id
      t.integer :materiaprima_id

      t.timestamps
    end
  end
end
