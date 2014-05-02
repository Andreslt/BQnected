class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :usuario
      t.text :comentario
      t.references :evento
      t.boolean :asistencia

      t.timestamps
    end
  end
end
