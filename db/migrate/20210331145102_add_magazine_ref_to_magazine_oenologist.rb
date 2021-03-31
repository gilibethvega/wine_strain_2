class AddMagazineRefToMagazineOenologist < ActiveRecord::Migration[5.2]
  def change
    add_reference :magazine_oenologists, :magazine, foreign_key: true
  end
end
