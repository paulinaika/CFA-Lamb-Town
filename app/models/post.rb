class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy 

  extend FriendlyId
 friendly_id :slug_candidates, use: :slugged

 def slug_candidates
  [
    :title,
    [:title, :content],
  ]
end
end
