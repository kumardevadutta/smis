class CreateStudentMarks < ActiveRecord::Migration
  def change
    create_table :student_marks do |t|
      t.integer :roll
      t.integer :student_id
      t.integer :mark

      t.timestamps null: false
    end
  end
end
