class StudentMark < ActiveRecord::Base
	belongs_to :student
	validates :student_id, presence: true
	validates :roll, presence: true
	validates :mark, presence: true
end
