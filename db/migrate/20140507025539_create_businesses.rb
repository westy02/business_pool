class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :type_id
      t.text :description
      t.string :country
      t.integer :stage_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
