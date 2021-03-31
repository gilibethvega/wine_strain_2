class AddOenologistRefToWineOenologist < ActiveRecord::Migration[5.2]
  def change
    add_reference :wine_oenologists, :oenologist, foreign_key: true
  end
end
