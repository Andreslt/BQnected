class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :tipo
      t.date :fecha
      t.string :barrio
      t.string :ubicacion
      t.integer :asistentes

      t.timestamps
    end
  end
end
