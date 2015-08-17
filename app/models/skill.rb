class Skill < ActiveRecord::Base

    validates :title, presence: true
    validates :description, presence: true
    validates :maxPoints, presence: true

end
