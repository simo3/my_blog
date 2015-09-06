class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :author_description
      t.string :author_img

      t.timestamps null: false
    end
  end
end
