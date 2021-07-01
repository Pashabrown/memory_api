class CreateMemory1s < ActiveRecord::Migration[6.1]
  def change
    create_table :memory1s do |t|
      t.string :img
      t.string :details
      t.decimal :level

      t.timestamps
    end
  end
end
