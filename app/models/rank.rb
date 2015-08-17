class Rank < ActiveRecord::Base
  belongs_to :skill

  validates :description, presence: true
  validates :skill, presence: true
end
