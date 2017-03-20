class UnavailableBlock < ApplicationRecord
  belongs_to :employee
  belongs_to :block
  belongs_to :term
end
