class ClubDirectorsController < ApplicationController
  before_action :set_club_director, only: [:show, :edit, :update, :destroy]

  # GET /club_directors
  # GET /club_directors.json
  def index
    @club_directors = ClubDirector.all
  end

  # GET /club_directors/1
  # GET /club_directors/1.json
  def show
  end

  # GET /club_directors/new
  def new
    @club_director = ClubDirector.new
  end

  # GET /club_directors/1/edit
  def edit
  end

  # POST /club_directors
  # POST /club_directors.json
  def create
    @club_director = ClubDirector.new(club_director_params)

    respond_to do |format|
      if @club_director.save
        format.html { redirect_to @club_director, notice: 'Club director was successfully created.' }
        format.json { render :show, status: :created, location: @club_director }
      else
        format.html { render :new }
        format.json { render json: @club_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_directors/1
  # PATCH/PUT /club_directors/1.json
  def update
    respond_to do |format|
      if @club_director.update(club_director_params)
        format.html { redirect_to @club_director, notice: 'Club director was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_director }
      else
        format.html { render :edit }
        format.json { render json: @club_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_directors/1
  # DELETE /club_directors/1.json
  def destroy
    @club_director.destroy
    respond_to do |format|
      format.html { redirect_to club_directors_url, notice: 'Club director was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_director
      @club_director = ClubDirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def club_director_params
      params.require(:club_director).permit(:member_id)
    end
end
