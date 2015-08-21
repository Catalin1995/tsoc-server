json.code 200
json.body do |json|
  json.partial! 'dungeon', dungeon: @dungeon, skills: @skills
end
