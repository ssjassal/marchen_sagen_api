class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.references :story, foreign_key: true
      t.references :storyteller, foreign_key: true
      t.string :snip
      t.timestamps
    end
  end
end
