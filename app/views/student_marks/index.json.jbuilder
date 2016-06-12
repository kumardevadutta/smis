json.array!(@student_marks) do |student_mark|
  json.extract! student_mark, :id, :roll, :student_id, :mark
  json.url student_mark_url(student_mark, format: :json)
end
