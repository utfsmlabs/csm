class Block < ApplicationRecord
  belongs_to :timeBlock
  has_many :shifts
  enum weekday: Date::DAYNAMES
  def name
  	return self.weekday + " " + self.timeBlock.name
  end
end
