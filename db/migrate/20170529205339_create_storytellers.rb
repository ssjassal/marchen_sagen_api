class CreateStorytellers < ActiveRecord::Migration[5.0]
  def change
    create_table :storytellers do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.integer :total

      t.timestamps
    end
  end
end
