class Comment < ApplicationRecord
  belongs_to :textbook
  
  validates :commenters, presence:true
  validates :body, presence:true
end
