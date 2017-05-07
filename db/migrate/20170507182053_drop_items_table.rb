class DropItemsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
