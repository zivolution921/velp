class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :restaurant, null: false
      t.references :user, null: false
      t.string :comment
      t.string :image, null: false
      t.timestamps 
    end
  end
end
