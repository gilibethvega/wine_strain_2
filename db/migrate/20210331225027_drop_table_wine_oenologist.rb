class DropTableWineOenologist < ActiveRecord::Migration[5.2]
  def up 
    drop_table :wine_oenologists 
  end 
  def down 
    raise ActiveRecord::IrreversibleMigration 
  end
end
