class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  #scope which selects the comments with the highest rating
  scope :rating_desc, -> {order(rating: :desc)}
end
