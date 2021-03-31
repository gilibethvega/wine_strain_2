class AddOenologistRefToMagazineOenologist < ActiveRecord::Migration[5.2]
  def change
    add_reference :magazine_oenologists, :oenologist, foreign_key: true
  end
end
