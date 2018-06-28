class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.string :title
      t.text :body
      t.string :place
      t.integer :price
      t.string :ref
      t.integer :hours

      t.timestamps
    end
  end
end
