class CreateAlerta < ActiveRecord::Migration
  def change
    create_table :alerta do |t|
      t.string :nombre
      t.text :contenido
      t.string :tipo
      t.integer :id

      t.timestamps
    end
  end
end
