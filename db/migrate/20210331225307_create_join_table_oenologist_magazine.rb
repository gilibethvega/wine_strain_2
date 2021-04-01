class CreateJoinTableOenologistMagazine < ActiveRecord::Migration[5.2]
  def change
    create_table :magazine_oenologists do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true
      t.timestamps
    end
  end
end
