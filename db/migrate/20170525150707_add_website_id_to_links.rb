class AddWebsiteIdToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :website_id, :integer
  end
end
