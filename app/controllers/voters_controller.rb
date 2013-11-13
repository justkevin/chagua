class VotersController < ApplicationController
  before_action :authorise_admin, only:[:index, :show]
  before_action :set_voter, only: [:show, :edit, :update, :destroy]

  # GET /voters
  # GET /voters.json
  def index
    if  !view_context.admin_is_logged_in?
      redirect_to new_session_path
    else
      @voters = Voter.all.order("approved")

      end
  end

  # GET /voters/1
  # GET /voters/1.json
  def show
  end

  # GET /voters/new
  def new
    @voter = Voter.new
  end

  # GET /voters/1/edit
  def edit
  end

  # POST /voters
  # POST /voters.json
  def create
    @voter = Voter.new(voter_params)

    respond_to do |format|
      if @voter.save
        format.html { redirect_to root_path, notice: "Thanks  for registering.#{@voter.username}We will get back after aprroval"}
        format.json { render action: 'show', status: :created, location: @voter }
      else
        format.html { render action: 'new' }
        format.json { render json: @voter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voters/1
  # PATCH/PUT /voters/1.json
  def update
    respond_to do |format|
      if @voter.update(voter_params)
        format.html { redirect_to @voter, notice: 'Voter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @voter.errors, status: :unprocessable_entity }
      end

    end
  end

  def approve
     @voter = Voter.find(params[:id])
     @voter.approved = true
     @voter.save!
     VoterMailer.approval_email(@voter).deliver
    redirect_to voters_path, notice:'Voter was successfully approved'
  end

  # DELETE /voters/1
  # DELETE /voters/1.json
  def destroy
    @voter.destroy
    respond_to do |format|
      format.html { redirect_to voters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voter
      @voter = Voter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voter_params
      params.require(:voter).permit(:email, :username, :password, :phone, :approved)
    end
end
