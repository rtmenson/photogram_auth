class Like < ApplicationRecord
    validates :user_id, :uniqueness => {:scope => :photo_id}
    validates :photo_id, presence: true
    belongs_to :photo
    belongs_to :user
end
