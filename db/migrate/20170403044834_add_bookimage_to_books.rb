class AddBookimageToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :bookimage, :string
  end
end
