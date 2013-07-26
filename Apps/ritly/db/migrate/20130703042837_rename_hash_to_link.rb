class RenameHashToLink < ActiveRecord::Migration
  def change
    rename_column :links, :hash, :hash_code
  end
end
