class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.attachment :image
      t.attachment :image2
      t.attachment :image3
      t.timestamps
    end
  end
end
