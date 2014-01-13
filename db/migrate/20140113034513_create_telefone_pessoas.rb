class CreateTelefonePessoas < ActiveRecord::Migration
  def change
    create_table :telefone_pessoas do |t|
      t.string :ddd
      t.string :telefone
      t.belongs_to :pessoa, index: true

      t.timestamps
    end
  end
end
