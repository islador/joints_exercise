class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :concept_id
      t.string :question1
      t.string :wrong_answer1A
      t.string :wrong_answer1B
      t.string :wrong_answer1C
      t.string :correct_answer1
      t.string :incorrect_feedback1
      t.string :correct_feedback1

      t.timestamps
    end
  end
end
