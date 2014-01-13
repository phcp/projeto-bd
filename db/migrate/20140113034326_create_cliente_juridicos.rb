class CreateClienteJuridicos < ActiveRecord::Migration
  def change
    create_table :cliente_juridicos do |t|
      t.string :cnpj
      t.belongs_to :cliente, index: true

      t.timestamps
    end
  end
end
