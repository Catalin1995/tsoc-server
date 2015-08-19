json.code 200
json.body do |json|
  json.partial! 'student', collection: @students, as: :student
end
