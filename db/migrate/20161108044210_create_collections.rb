class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.integer :year
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
