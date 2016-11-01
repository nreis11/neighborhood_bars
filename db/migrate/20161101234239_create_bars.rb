class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :specialty_drink
      t.boolean :cash_only
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
