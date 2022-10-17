class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|

      t.integer :genre_id,    null: true
      t.integer :customer_id, null: true
      t.string  :title,       null: false
      t.text    :body,        null: false

      t.timestamps
    end
  end
end
