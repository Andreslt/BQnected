class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :barrio
      t.text :descripcion
      t.string :username
      t.integer :id

      t.timestamps
    end
  end
end
