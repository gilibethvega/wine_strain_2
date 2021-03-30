class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.boolean :editor, default: false
      t.boolean :writer, default: false
      t.boolean :reviewer, default: false

      t.timestamps
    end
  end
end
