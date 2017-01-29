class Comment < ApplicationRecord
  #validations to ensure very comment record should be saved with a message, user id, product id and rating is present, where rating is an integer
  validates :body, presence: true
  validates :user, presence:true
  validates :product, presence: true
  validates :rating, numericality: {only_integer: true}

  #asscociations with user and product model
  belongs_to :user
  belongs_to :product

  #scope which selects the comments with the highest rating
  scope :rating_desc, -> {order(rating: :desc)}

  #scope which selects the comments with the lowest rating
  scope :rating_asc, -> {order(rating: :asc)}

end
