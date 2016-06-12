class StudentDetailsController < ApplicationController
  def index
  	@student_marks=StudentMark.where("mark>= ?", 50)

  end
end
