class AddWebsiteIdToHeaders < ActiveRecord::Migration[5.0]
  def change
    add_column :headers, :website_id, :integer
  end
end
