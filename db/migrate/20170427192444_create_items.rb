class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      # probably don't actually want this, would want a table to map
      # items to lists and then a table to map lists to ppl
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
