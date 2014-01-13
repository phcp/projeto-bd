class CreateProducaos < ActiveRecord::Migration
  def change
    create_table :producaos do |t|
      t.datetime :data
      t.integer :quantidade
      t.integer :produto_id
      t.integer :materiaprima_id

      t.timestamps
    end
  end
end
