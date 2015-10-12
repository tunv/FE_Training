class UserlogsController < ApplicationController
  before_action :set_userlog, only: [:show, :edit, :update, :destroy]

  # GET /userlogs
  # GET /userlogs.json
  def index
    #@userlogs = Userlog.all
    @user_logs = current_user.user_logs
  end

  # GET /userlogs/1
  # GET /userlogs/1.json
  def show
  end

  # GET /userlogs/new
  def new
    @userlog = Userlog.new
  end

  # GET /userlogs/1/edit
  def edit
  end

  # POST /userlogs
  # POST /userlogs.json
  def create
    @userlog = Userlog.new(userlog_params)

    respond_to do |format|
      if @userlog.save
        format.html { redirect_to @userlog, notice: 'Userlog was successfully created.' }
        format.json { render :show, status: :created, location: @userlog }
      else
        format.html { render :new }
        format.json { render json: @userlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userlogs/1
  # PATCH/PUT /userlogs/1.json
  def update
    respond_to do |format|
      if @userlog.update(userlog_params)
        format.html { redirect_to @userlog, notice: 'Userlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @userlog }
      else
        format.html { render :edit }
        format.json { render json: @userlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlogs/1
  # DELETE /userlogs/1.json
  def destroy
    @userlog.destroy
    respond_to do |format|
      format.html { redirect_to userlogs_url, notice: 'Userlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlog
      @userlog = Userlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userlog_params
      params.require(:userlog).permit(:user_id, :log_data)
    end
end
