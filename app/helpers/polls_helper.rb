module PollsHelper
<<<<<<< HEAD
=======
	 def user_is_logged_in?
        # This could be either a voter or admin
        voter_is_logged_in? || admin_is_logged_in?
    end
    
   def admin_is_logged_in?
        session[:user] != nil && session[:user].is_a?(Admin)
    end

    def voter_is_logged_in?
        session[:user] != nil && session[:user].is_a?(Voter)
    end

>>>>>>> 1314a6f8583dd83eb729293ffacfd5ac19b0455f
end
