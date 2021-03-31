class AddWineRefToWineOenologist < ActiveRecord::Migration[5.2]
  def change
    add_reference :wine_oenologists, :wine, foreign_key: true
  end
end
