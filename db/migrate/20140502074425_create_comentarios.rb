class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.text :comentario
      t.string :evento
      t.boolean :asistencia
      t.integer :id

      t.timestamps
    end
  end
end
