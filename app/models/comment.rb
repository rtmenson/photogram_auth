class Comment < ApplicationRecord
  validates :photo_id,
           :body,
           :user_id, presence: true

end
