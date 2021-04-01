class DropMagazineOenologist < ActiveRecord::Migration[5.2]
  def up 
    drop_table :magazine_oenologists 
  end 
  def down 
    raise ActiveRecord::IrreversibleMigration 
  end
end
