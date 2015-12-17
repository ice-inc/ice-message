class TallyActionLogsController < ApplicationController
  before_action :set_tally_action_log, only: [:show, :edit, :update, :destroy]

  # GET /tally_action_logs
  # GET /tally_action_logs.json
  def index
    target_date = params['target_date']
    if(target_date.blank?) then
      target_date = Date.today.strftime('%Y-%m')
    end

    target_dates = target_date.split("-")
    @year = target_dates[0]
    @month = target_dates[1]

    @from = Date.new(@year.to_i, @month.to_i, 1)
    @to = @from.end_of_month

    @projects = Project.all
  end

  # GET /tally_action_logs/1
  # GET /tally_action_logs/1.json
  def show
    target_date = params['target_date']
    if(target_date.blank?) then
      target_date = Date.today.strftime('%Y-%m')
    end
    target_dates = target_date.split("-")
    @year = target_dates[0]
    @month = target_dates[1]
    from = Date.new(@year.to_i, @month.to_i, 1)
    to = from.end_of_month
    @total_time = @project.getTotalTime(from, to)
  end

  # GET /tally_action_logs/new
  def new
    @tally_action_log = TallyActionLog.new
  end

  # GET /tally_action_logs/1/edit
  def edit
  end

  # POST /tally_action_logs
  # POST /tally_action_logs.json
  def create
    @tally_action_log = TallyActionLog.new(tally_action_log_params)

    respond_to do |format|
      if @tally_action_log.save
        format.html { redirect_to @tally_action_log, notice: 'Tally action log was successfully created.' }
        format.json { render :show, status: :created, location: @tally_action_log }
      else
        format.html { render :new }
        format.json { render json: @tally_action_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tally_action_logs/1
  # PATCH/PUT /tally_action_logs/1.json
  def update
    respond_to do |format|
      if @tally_action_log.update(tally_action_log_params)
        format.html { redirect_to @tally_action_log, notice: 'Tally action log was successfully updated.' }
        format.json { render :show, status: :ok, location: @tally_action_log }
      else
        format.html { render :edit }
        format.json { render json: @tally_action_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tally_action_logs/1
  # DELETE /tally_action_logs/1.json
  def destroy
    @tally_action_log.destroy
    respond_to do |format|
      format.html { redirect_to tally_action_logs_url, notice: 'Tally action log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tally_action_log
      @project = Project.find(params[:id])
      # @tally_action_log = TallyActionLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tally_action_log_params
      params[:tally_action_log]
    end
end
