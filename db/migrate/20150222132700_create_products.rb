class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :sub_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :sub_groups
  end
end
