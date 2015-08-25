json.call(dungeon, :id, :title, :description)

result = []

skills.each do |skill|
  elem = {}
  links = []
  stats = []
  talents = []
  dependsOn = []
  rankDescriptions = []

  elem['id'] = skill.id
  elem['title'] = skill.title
  elem['description'] = skill.description
  elem['maxPoints'] = skill.maxPoints

  Link.where(skill_id: skill.id).each do |elem|
    link = {}
    link['label'] = elem.label
    link['url'] = elem.url
    links.push(link)
  end
  elem['links'] = links if links.count != 0

  Statistic.where(skill_id: skill.id).each do |elem|
    stat = {}
    stat['title'] = elem.title
    stat['value'] = elem.value
    stats.push(stat)
  end
  elem['stats'] = stats if stats.count != 0

  Rank.where(skill_id: skill.id).each do |elem|
    rankDescriptions.push(elem.description)
  end
  elem['rankDescriptions'] = rankDescriptions if rankDescriptions.count != 0

  Talent.where(skill_id: skill.id).each do |elem|
    talents.push(elem.description)
  end
  elem['talents'] = talents if talents.count != 0

  Depende.where(skill_id: skill.id).each do |elem|
    dependsOn.push(elem.depend_on)
  end
  elem['dependsOn'] = dependsOn if dependsOn.count != 0
  result.push(elem)
end

json.skills result
