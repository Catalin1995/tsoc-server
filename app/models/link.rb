class Link < ActiveRecord::Base

    validates :label, presence: true
    validates :url, presence: true
    validates :skill, presence: true

end
