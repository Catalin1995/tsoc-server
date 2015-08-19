class Link < ActiveRecord::Base
  belongs_to :skill

  validates :label, presence: true
  validates :url, presence: true
  validates :skill, presence: true
end
