class HistoriansController < ApplicationController
  before_action :set_historian, only: [:show, :edit, :update, :destroy]

  # GET /historians
  # GET /historians.json
  api :GET, '/historians', "Get all historians"
  param :id, :number, desc: "database id of the historian"
  param :full_name, String, "Name of the art historian."
  param :historian_id, String, desc: 'id of the historian'
  param :name, String, desc: 'Name of the art historian.'
  param :date_born, String, desc: 'Year the art historian was born.'
  param :place_born, String, desc: 'Location the art historian was born.'
  param :date_died, String, desc: 'Year the art historian died.'
  param :place_died,String, desc: 'Location the art historian died.'
  param :overview, String, desc: 'Narrative of the art historians life and work'
  param :home_country, String, desc: 'Narrative of the art historians life and work'
  param :sources, String, desc: 'Source(s) from which information about the art historian is derived.'
  param :bibliography, String, desc: 'Selected list of art historians publications and projects.'
  param :other_names, String, desc: 'Art historians translations, aliases, sobriquets, variations, etc.'
  param :notes, String, desc: 'Miscellaneous bucket for uncertainties & notes about dates/places'
  param :gender, String, desc: 'Gender of the Historian'
  param :subject_area, String, desc: 'Subject area for the historian'

  def index
    @historians = Historian.all
  end

  # GET /historians/1
  # GET /historians/1.json
  api :GET, '/historians/:id', "Get historian by ID"
  param :id, :number, desc: "database id of the historian"
  param :full_name, String, "Name of the art historian."
  param :historian_id, String, desc: 'id of the historian'
  param :name, String, desc: 'Name of the art historian.'
  param :date_born, String, desc: 'Year the art historian was born.'
  param :place_born, String, desc: 'Location the art historian was born.'
  param :date_died, String, desc: 'Year the art historian died.'
  param :place_died,String, desc: 'Location the art historian died.'
  param :overview, String, desc: 'Narrative of the art historians life and work'
  param :home_country, String, desc: 'Narrative of the art historians life and work'
  param :sources, String, desc: 'Source(s) from which information about the art historian is derived.'
  param :bibliography, String, desc: 'Selected list of art historians publications and projects.'
  param :other_names, String, desc: 'Art historians translations, aliases, sobriquets, variations, etc.'
  param :notes, String, desc: 'Miscellaneous bucket for uncertainties & notes about dates/places'
  param :gender, String, desc: 'Gender of the Historian'
  param :subject_area, String, desc: 'Subject area for the historian'

  def show
  end

  # GET /historians/new
  def new
    @historian = Historian.new
  end

  # GET /historians/1/edit
  def edit
  end

  # POST /historians
  # POST /historians.json
  def create
    @historian = Historian.new(historian_params)

    respond_to do |format|
      if @historian.save
        format.html { redirect_to @historian, notice: 'Historian was successfully created.' }
        format.json { render :show, status: :created, location: @historian }
      else
        format.html { render :new }
        format.json { render json: @historian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historians/1
  # PATCH/PUT /historians/1.json
  def update
    respond_to do |format|
      if @historian.update(historian_params)
        format.html { redirect_to @historian, notice: 'Historian was successfully updated.' }
        format.json { render :show, status: :ok, location: @historian }
      else
        format.html { render :edit }
        format.json { render json: @historian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historians/1
  # DELETE /historians/1.json
  def destroy
    @historian.destroy
    respond_to do |format|
      format.html { redirect_to historians_url, notice: 'Historian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historian
      @historian = Historian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historian_params
      params.require(:historian).permit(:historian_id, :name, :date_born, :place_born, :date_died, :place_died, :overview, :home_country, :sources, :bibliography, :other_names, :notes, :gender, :subject_area, :path)
    end
end
