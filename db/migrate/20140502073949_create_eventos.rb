class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :tipo
      t.text :descripcion
      t.date :fecha
      t.string :locacion
      t.string :barrio
      t.string :ubicacion
      t.time :hora
      t.integer :asistentes
      t.integer :id

      t.timestamps
    end
  end
end
