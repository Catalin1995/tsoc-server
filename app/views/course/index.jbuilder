json.code 200
json.body do |json|
  json.partial! 'course', collection: @courses, as: :course
end
