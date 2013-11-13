class VotesController < ApplicationController
	def index

	end

	def create
		# @vote = @option.votes.create(vote_params)

		@vote = Vote.create! :option_id => params[:option], :voter_id => session[:user].id

		redirect_to polls_path(@vote.option.poll), notice: "You have voted for #{@vote.option.name}"
	end

	def set_option
      @option = Option.find(params[:option])
    end

	def vote_params
		params.permit(:option_id, :voter_id)
	end

end