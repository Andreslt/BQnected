class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.references :barrio
      t.text :descripcion
      t.string :username

      t.timestamps
    end
  end
end
