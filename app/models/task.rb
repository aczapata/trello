class Task < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :duration, presence: true
    validate :date_validation 
    
    def date_validation
      if self[:end_date] < self[:start_date]
        errors[:end_date] << " must come after Start Date "
        return false
      else
        return true
      end
    end
end
