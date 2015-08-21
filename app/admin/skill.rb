ActiveAdmin.register Skill do
  permit_params :title, :description, :maxPoints, :dungeon_id
end
