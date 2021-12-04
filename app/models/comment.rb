class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :guide_question
end
