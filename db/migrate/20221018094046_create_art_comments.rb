class CreateArtComments < ActiveRecord::Migration[6.1]
  def change
    create_table :art_comments do |t|
      t.text :comment
      t.integer :customer_id
      t.integer :art_id

      t.timestamps
    end
  end
end
