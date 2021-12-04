class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :imageURL
      t.string :title
      t.string :series
      t.text :description
      t.integer :pages
      t.string :publicationDate
      t.text :genres, array: true, default: []
      t.string :author

      t.timestamps
    end
  end
end
