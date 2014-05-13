class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.text :contenido
      t.string :tipo
      t.references :barrio

      t.timestamps
    end
    add_index :alerts, :barrio_id
  end
end
