class CreateJoinTableOenologistWine < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_oenologists do |t|
      t.references :oenologist, foreign_key: true
      t.references :wine, foreign_key: true
      t.timestamps
    end
  end
end
