json.array!(@students) do |student|
  json.extract! student, :id, :sname, :age, :roll, :addr, :mobile, :email, :dob
  json.url student_url(student, format: :json)
end
