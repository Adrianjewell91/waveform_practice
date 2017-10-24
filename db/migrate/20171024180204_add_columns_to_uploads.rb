class AddColumnsToUploads < ActiveRecord::Migration[5.1]
  def change
    add_column :uploads, :title, :string, null: false
    add_column :uploads, :url, :string, null: false
  end
end
