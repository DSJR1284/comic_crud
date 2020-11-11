class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.string :image_url
      t.text :blurb
      t.integer :user_id #foreign key to set up belongs to relationship with user. 
      t.timestamps null: false
    end
  end
end
