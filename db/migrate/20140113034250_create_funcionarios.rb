class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :cargo
      t.string :cpf
      t.string :senha
      t.belongs_to :pessoa, index: true

      t.timestamps
    end
  end
end
