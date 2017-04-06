class AddExceptToGoodnews < ActiveRecord::Migration[5.0]
  def change
    add_column :goodnews, :except, :string
  end
end
