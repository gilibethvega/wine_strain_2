class CreateWineOenologists < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_oenologists do |t|
      t.integer :grade
    end
  end
end
