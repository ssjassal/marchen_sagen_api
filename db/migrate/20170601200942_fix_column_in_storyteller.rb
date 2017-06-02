class FixColumnInStoryteller < ActiveRecord::Migration[5.0]
  def change
     rename_column :storytellers, :password, :password_digest
  end
end
