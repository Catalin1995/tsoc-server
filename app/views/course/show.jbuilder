json.code 200
json.body do |json|
  json.partial! 'course', course: @course
end
