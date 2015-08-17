json.code 200
json.body do |json|
  json.partial! 'skill', collection: @skills, as: :skill
end
