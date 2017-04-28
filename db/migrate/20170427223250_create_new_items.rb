class CreateNewItems < ActiveRecord::Migration[5.0]
  def change
    create_table :new_items do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
