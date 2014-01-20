class RemoveTelefoneFromFornecedor < ActiveRecord::Migration
  def change
    remove_column :fornecedors, :telefone, :string
  end
end
