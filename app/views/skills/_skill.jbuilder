json.(skill, :id, :title, :description, :maxPoints, :created_at, :updated_at)

links = Link.where(:skill_id => skill.id)
if links != nil
  json.links links
end

stats = Statistic.where(:skill_id => skill.id)
if stats != nil
  json.stats stats
end

rankDescriptions = Rank.where(:skill_id => skill.id)
if rankDescriptions != nil
  json.rankDescriptions rankDescriptions
end
