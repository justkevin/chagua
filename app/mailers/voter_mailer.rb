class VoterMailer < ActionMailer::Base
  default from: "robyne.kiplangat@gmail.com"
  def approval_email(voter)
  	@voter = voter
  	mail(to: @voter.email, subject:"welcome to chaguo lako")
  end
  def new_poll_email(voter_add)
  	mail(to: voter_add, subject:"A new poll has been posted, get to express your views")
  	
  end
end

