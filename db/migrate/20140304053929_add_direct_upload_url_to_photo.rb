class AddDirectUploadUrlToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :direct_upload_url, :string, null: false
    add_column :photos, :processed, :boolean, null: false
  end
end
