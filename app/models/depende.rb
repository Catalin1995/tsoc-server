class Depende < ActiveRecord::Base
  belongs_to :skill

  validates :skill, presence: true
  validates :depend_on, presence: true

  validate :exist_depend

  private

  def exist_depend
    if Skill.exists?(depend_on) == false
      errors.add(:depend_on, 'This skill does not exist!!')
    end
  end
end
