class CreateConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :concepts do |t|
      t.string :concept1
      t.integer :lesson_id

      t.timestamps
    end
  end
end
