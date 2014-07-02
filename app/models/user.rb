class User < ActiveRecord::Base

	validates :phone_number, :phony_plausible => true

end
