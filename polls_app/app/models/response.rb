class Response < ApplicationRecord
  belongs_to :answer_choice
    class_name: 'AnswerChoice',
    foreign_key: :answer_choice_id,
    primary_key: :id 

  belongs_to :respondent 
    class_name: 'Response',
    foreign_key: :user_id,
    primary_key: :id

  has_one :question 
    through: :answer_choices,
    source: :question

  def sibling_responses
    responses.
  end 
end 