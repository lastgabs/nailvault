class AddDetailsToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :maker, :string
    add_column :brands, :country, :string
    add_column :brands, :status, :integer, null: false, default: 0
    add_column :brands, :instagram, :string
    add_column :brands, :facebook_page, :string
    add_column :brands, :facebook_group, :string
    add_column :brands, :twitter, :string
  end
end
