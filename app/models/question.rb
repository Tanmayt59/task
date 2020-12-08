class Question < ApplicationRecord
    has_many :comments, as: :commentable
    validates :content, presence: true

end
