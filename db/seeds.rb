# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |t|
  User.create(username: "User #{t}")
end

5.times do |t|
  user = User.find((t+1))
  Comment.create(user_id: user.id, comment: "cat #{rand(t..100)}" )
end

5.times do |t|
  Lesson.create(title: "Lesson #{t}")
end

5.times do |t|
  lesson = Lesson.find((t+1))
  Concept.create(lesson_id: lesson.id, concept1: "Bach Expertise Level #{rand(t..100)}" )
end


concepts = Concept.all
concepts.each do |concept|
  Question.create(concept_id: concept.id, question1: "Concept: #{concept.concept1}, Question #{rand(1..100)}")
end

users = User.all
users.each do |user|
  lessons = Lesson.all
  lessons.each do |lesson|
    UserLesson.create(user_id: user.id, lesson_id: lesson.id)
  end
end
