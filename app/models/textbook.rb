class Textbook < ApplicationRecord
    has_many:comments, dependent: :destroy
    belongs_to:user

    
    validates :user, presence:true
    validates :name, presence:true, uniqueness: { scope: :user_id }
    validates :description, presence:true
    validates :price, presence:true
    validates :course, presence:true
    validates :instructor, presence:true
end 
