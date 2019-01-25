class User < ApplicationRecord
  validates :title,  presence: true 

  has_many :authored_polls
    class_name: 'Poll',
    foreign_key: :author_id,
    primary_key: :id 

  has_many :responses 
    class_name: 'Responses',
    foreign_key: :user_id,
    primary_key: :id

end 