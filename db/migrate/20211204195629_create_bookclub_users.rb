class CreateBookclubUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :bookclub_users do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :bookclub, null: false, foreign_key: true
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
