class AddMagazineRefToRole < ActiveRecord::Migration[5.2]
  def change
    add_reference :roles, :magazine, foreign_key: true
  end
end