class Statistic < ActiveRecord::Base

  validates :title, presence: true
  validates :value, presence: true
  validates :skill, presence: true

end
