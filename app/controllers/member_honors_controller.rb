class MemberHonorsController < ApplicationController
  before_action :set_member_honor, only: [:show, :edit, :update, :destroy]

  # GET /member_honors
  # GET /member_honors.json
  def index
    @member_honors = MemberHonor.all
  end

  # GET /member_honors/1
  # GET /member_honors/1.json
  def show
  end

  # GET /member_honors/new
  def new
    @member_honor = MemberHonor.new
  end

  # GET /member_honors/1/edit
  def edit
  end

  # POST /member_honors
  # POST /member_honors.json
  def create
    @member_honor = MemberHonor.new(member_honor_params)

    respond_to do |format|
      if @member_honor.save
        format.html { redirect_to @member_honor, notice: 'Member honor was successfully created.' }
        format.json { render :show, status: :created, location: @member_honor }
      else
        format.html { render :new }
        format.json { render json: @member_honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_honors/1
  # PATCH/PUT /member_honors/1.json
  def update
    respond_to do |format|
      if @member_honor.update(member_honor_params)
        format.html { redirect_to @member_honor, notice: 'Member honor was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_honor }
      else
        format.html { render :edit }
        format.json { render json: @member_honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_honors/1
  # DELETE /member_honors/1.json
  def destroy
    @member_honor.destroy
    respond_to do |format|
      format.html { redirect_to member_honors_url, notice: 'Member honor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_honor
      @member_honor = MemberHonor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_honor_params
      params.require(:member_honor).permit(:member_id, :honor_id)
    end
end
