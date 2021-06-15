class CreateWays < ActiveRecord::Migration[6.0]
  def change
    create_table :ways do |t|
      t.string :color
      t.string :description
      t.integer :destination_id

      t.timestamps
    end
  end
end
