class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :sname
      t.integer :age
      t.integer :roll
      t.text :addr
      t.integer :mobile
      t.string :email
      t.datetime :dob

      t.timestamps null: false
    end
  end
end
