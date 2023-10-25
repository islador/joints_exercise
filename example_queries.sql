-- How do I get all the concept1 & question1 values side by side in a single return?

SELECT title, concept1, questions.question1
FROM questions
INNER JOIN concepts
ON questions.concept_id = concepts.id
INNER JOIN lessons
ON concepts.lesson_id = lessons.id
ORDER BY title, concept1 ASC;

-- Which questions did User 2 complete?
-- Expected Return: questions.question1 for all questions completed by User 2
SELECT users.id, user_lessons.id, lessons.title, concepts.concept1, questions.question1
FROM users
INNER JOIN user_lessons
ON users.id = user_lessons.user_id
INNER JOIN lessons
ON user_lessons.lesson_id = lessons.id
INNER JOIN concepts
ON lessons.id = concepts.lesson_id
INNER JOIN questions
ON concepts.id = questions.concept_id
WHERE users.id = 2;