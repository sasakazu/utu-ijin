class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end
