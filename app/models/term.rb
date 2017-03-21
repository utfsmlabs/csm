class Term < ApplicationRecord
	def self.current_term
		Term.where('start < ?', DateTime.now).where('end > ?', DateTime.now).first
	end
end