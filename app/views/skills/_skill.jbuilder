json.(skill, :id, :title, :description, :maxPoints, :created_at, :updated_at)
json.links Link.where(:skill_id => skill.id)
