class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :category
      t.string :content
      t.string :author
      t.string :description
      t.date :date, default: 'CURRENT_DATE'
      t.string :img
      t.timestamps
    end
  end
end
