class CreateGoodnews < ActiveRecord::Migration[5.0]
  def change
    create_table :goodnews do |t|
      t.string :title
      t.string :linkimage

      t.timestamps
    end
  end
end
