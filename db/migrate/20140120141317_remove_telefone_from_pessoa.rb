class RemoveTelefoneFromPessoa < ActiveRecord::Migration
  def change
    remove_column :pessoas, :telefone, :string
  end
end
