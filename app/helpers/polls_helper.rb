module PollsHelper

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


end
