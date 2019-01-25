# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

ActiveRecord::Base.transaction do 
  u1 = User.create!(username: 'Danny')
  u2 = User.create!(username: 'Jack')
  u3 = User.create!(username: 'Ronil')
  u4 = User.create!(username: 'Elliot')
  u5 = User.create!(username: 'Vishal')
  
  p1 = Poll.create!(author_id: u1.id, text:'Favorite Things')
  p2 = Poll.create!(author_id: u3.id, text:'Favorite Colors')

  q1 = Question.create!(poll_id: p1.id, text:'Best pet?')
  q2 = Question.create!(poll_id: p1.id, text:'Best food?')
  q3 = Question.create!(poll_id: p2.id, text:'Best Blue?')
  q4 = Question.create!(poll_id: p2.id, text:'Best White')

  a1 = AnswerChoice.create!(question_id: q1.id, text:'Dog!')
  a2 = AnswerChoice.create!(question_id: q1.id, text:'Cat!')
  a3 = AnswerChoice.create!(question_id: q2.id, text:'Sushi!')
  a4 = AnswerChoice.create!(question_id: q2.id, text:'Steak!')
  a5 = AnswerChoice.create!(question_id: q3.id, text:'Sky Blue!')
  a6 = AnswerChoice.create!(question_id: q3.id, text:'Dark Blue!')
  a7 = AnswerChoice.create!(question_id: q4.id, text:'White!')
  a8 = AnswerChoice.create!(question_id: q4.id, text:'Whiter White!')

  r1 = Response.create!(answer_choice_id: a1.id, user_id: u1.id)
  r2 = Response.create!(answer_choice_id: a4.id, user_id: u1.id)
  r3 = Response.create!(answer_choice_id: a2.id, user_id: u2.id)
  r4 = Response.create!(answer_choice_id: a5.id, user_id: u2.id)
  r5 = Response.create!(answer_choice_id: a2.id, user_id: u3.id)
  r6 = Response.create!(answer_choice_id: a5.id, user_id: u3.id)
  r7 = Response.create!(answer_choice_id: a7.id, user_id: u4.id)
  r8 = Response.create!(answer_choice_id: a8.id, user_id: u4.id)
  r9 = Response.create!(answer_choice_id: a4.id, user_id: u5.id)
  r10 = Response.create!(answer_choice_id: a2.id, user_id: u5.id)



