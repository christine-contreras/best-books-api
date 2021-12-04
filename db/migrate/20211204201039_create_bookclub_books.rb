class CreateBookclubBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookclub_books do |t|
      t.belongs_to :bookclub, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true
      t.boolean :archived
      t.string :status
      t.string :suggested_by
      t.boolean :current

      t.timestamps
    end
  end
end
