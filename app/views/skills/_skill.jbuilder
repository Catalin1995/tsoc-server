json.(skill, :id, :title, :description, :maxPoints, :created_at, :updated_at)

links = Link.where(:skill_id => skill.id)
if links != nil
  json.links links
end

stats = Statistic.where(:skill_id => skill.id)
if stats.count != 0
  json.stats stats
end

rankDescriptions = Rank.where(:skill_id => skill.id)
if rankDescriptions.count != 0
  json.rankDescriptions rankDescriptions
end

talents = Talent.where(:skill_id => skill.id)
if talents.count != 0
  json.talents talents
end

dependsOn = Depende.where(:skill_id => skill.id)
if dependsOn.count != 0
  json.dependsOn dependsOn
end
