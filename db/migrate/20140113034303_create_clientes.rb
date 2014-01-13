class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.belongs_to :pessoa, index: true

      t.timestamps
    end
  end
end
