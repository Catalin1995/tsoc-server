json.(skill, :id, :title, :description, :maxPoints)

links = []
stats = []
rankDescriptions = []
talents = []
dependsOn = []

Link.where(:skill_id => skill.id).each do |elem|
  link = {}
  link["label"] = elem.label
  link["url"] = elem.url
  links.push(link)
end
json.links links

Statistic.where(:skill_id => skill.id).each do |elem|
  stat = {}
  stat["title"] = elem.title
  stat["value"] = elem.value
  stats.push(stat)
end
json.stats stats

Rank.where(:skill_id => skill.id).each do |elem|
  rankDescriptions.push(elem.description)
end
json.rankDescriptions rankDescriptions


Talent.where(:skill_id => skill.id).each do |elem|
  talents.push(elem.description)
end
json.talents talents

Depende.where(:skill_id => skill.id).each do |elem|
  dependsOn.push(elem.depend_on)
end
json.dependsOn dependsOn
