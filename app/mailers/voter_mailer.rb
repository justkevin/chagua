class VoterMailer < ActionMailer::Base
<<<<<<< HEAD
  default from: "kevinbet6@gmail.com"
=======
  default from: "robyne.kiplangat@gmail.com"
>>>>>>> 1314a6f8583dd83eb729293ffacfd5ac19b0455f
  def approval_email(voter)
  	@voter = voter
  	mail(to: @voter.email, subject:"welcome to chaguo lako")
  end
  def new_poll_email(voter_add)
<<<<<<< HEAD
  	mail(to: voter_add, subject:"A new poll has been posted")
=======
  	mail(to: voter_add, subject:"A new poll has been posted, get to express your views")
>>>>>>> 1314a6f8583dd83eb729293ffacfd5ac19b0455f
  	
  end
end

