class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :category
      t.string :content
      t.string :authors
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
