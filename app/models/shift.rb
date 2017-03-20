class Shift < ApplicationRecord
  belongs_to :term
  belongs_to :block
  belongs_to :employee
end
