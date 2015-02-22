class CreateSubGroups < ActiveRecord::Migration
  def change
    create_table :sub_groups do |t|
      t.string :name
      t.references :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :sub_groups, :groups
  end
end
