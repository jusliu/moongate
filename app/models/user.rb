class User < ActiveRecord::Base
	has_many :tickets
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  	def email_required?
	    false
	end

	def email_changed?
	    false
	end
	
end
