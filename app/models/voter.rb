class Voter < ActiveRecord::Base

	validates :email, presence:true, uniqueness:true, email:true
	validates :username, presence:true, uniqueness:{case_sensitive:false}
	validates :password, presence:true, length:{in: 6..10}
	validates :phone, presence:true
	def self.authenticate(username, password)
        #only approved voters should be able to log in
        voter = find_by_username_and_password_and_approved(username, password, true)    
    end
end
