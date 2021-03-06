class Poll < ApplicationRecord
  validates :title, presence: true 

  belongs_to :author
    class_name: 'User',
    foreign_key: :author_id,
    primary_key: :id 

  has_many :questions 
    class_name: 'Responses',
    foreign_key: :poll_id,
    primary_key: :id

end 