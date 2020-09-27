class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :summary
      t.integer :view
      t.string :media
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
