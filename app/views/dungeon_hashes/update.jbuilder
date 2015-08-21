json.code 200
json.body do |json|
  json.partial! 'dungeon_hash', dungeon_hash: @dungeon_hash
end
