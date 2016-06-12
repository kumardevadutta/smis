class Student < ActiveRecord::Base
	has_one :student_mark, dependent: :destroy
	validates :roll, presence: true
	validates :sname, presence: true
end
