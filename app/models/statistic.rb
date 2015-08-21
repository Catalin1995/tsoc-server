class Statistic < ActiveRecord::Base
  belongs_to :skill

  validates :title, presence: true
  validates :value, presence: true
  validates :skill, presence: true
end
