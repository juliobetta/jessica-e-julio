class RemoveColumnsFromPhoto < ActiveRecord::Migration
  def up
    remove_column :photos, :processed
    remove_column :photos, :direct_upload_url
  end

  def down
  end
end
