json.code 200
json.body do |json|
  json.partial! 'student', student: @student
end
