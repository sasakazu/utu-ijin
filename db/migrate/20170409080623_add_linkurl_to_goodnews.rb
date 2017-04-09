class AddLinkurlToGoodnews < ActiveRecord::Migration[5.0]
  def change
    add_column :goodnews, :linkurl, :string
  end
end
