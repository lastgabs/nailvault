class CreateNailPolishes < ActiveRecord::Migration[5.0]
  def change
    create_table :nail_polishes do |t|
      t.string :name, null: false
      t.string :size
      t.string :color
      t.references :brand, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
