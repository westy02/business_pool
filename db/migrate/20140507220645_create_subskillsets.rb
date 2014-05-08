class CreateSubskillsets < ActiveRecord::Migration
  def change
    create_table :subskillsets do |t|
      t.string :name

      t.timestamps
    end
  end
end
