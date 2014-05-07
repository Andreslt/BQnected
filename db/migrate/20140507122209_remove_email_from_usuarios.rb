class RemoveEmailFromUsuarios < ActiveRecord::Migration
  def up
    remove_column :usuarios, :email
  end

  def down
    add_column :usuarios, :email, :string
  end
end
