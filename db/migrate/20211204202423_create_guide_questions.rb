class CreateGuideQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :guide_questions do |t|
      t.text :question
      t.integer :chapter
      t.belongs_to :bookclub_book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
