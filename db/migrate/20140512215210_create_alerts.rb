class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :contenido
      t.text :
      t.string :tipo
      t.string :
      t.string :barrio
      t.references :

      t.timestamps
    end
    add_index :alerts, :_id
  end
end
