class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :tipo
      t.date :fecha
      t.references :barrio
      t.string :ubicacion
      t.integer :asistentes
      t.time :hora
      t.text :descripcion

      t.timestamps
    end
    add_index :eventos, :barrio_id
  end
end
