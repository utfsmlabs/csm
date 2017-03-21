class Block < ApplicationRecord
	enum weekday: Date::DAYNAMES
end