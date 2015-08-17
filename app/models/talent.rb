class Talent < ActiveRecord::Base
  belongs_to :skill

  validates :skill, presence: true
  validates :description, presence: true
end
