class CreateIjins < ActiveRecord::Migration[5.0]
  def change
    create_table :ijins do |t|
      t.string :ijinimage
      t.string :name
      t.text :contents

      t.timestamps
    end
  end
end
