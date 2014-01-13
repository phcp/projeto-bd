class CreateClienteFisicos < ActiveRecord::Migration
  def change
    create_table :cliente_fisicos do |t|
      t.string :cpf
      t.belongs_to :cliente, index: true

      t.timestamps
    end
  end
end
