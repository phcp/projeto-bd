class CreateTelefoneFornecedors < ActiveRecord::Migration
  def change
    create_table :telefone_fornecedors do |t|
      t.string :ddd
      t.string :telefone
      t.belongs_to :fornecedor, index: true

      t.timestamps
    end
  end
end
