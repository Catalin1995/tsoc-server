json.code 200
json.body do |json|
  json.partial! 'student', student: @student
  json.status @status
  json.completed @completed
  json.uncompleted @uncompleted
  json.number_of_courses @number_of_courses
end
