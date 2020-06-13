class ContributonsController < ApplicationController
  before_action :set_contributon, only: [:show, :edit, :update, :destroy]

  # GET /contributons
  # GET /contributons.json
  def index
    @contributons = Contributon.all
  end

  # GET /contributons/1
  # GET /contributons/1.json
  def show
  end

  # GET /contributons/new
  def new
    @contributon = Contributon.new
  end

  # GET /contributons/1/edit
  def edit
  end

  # POST /contributons
  # POST /contributons.json
  def create
    @contributon = Contributon.new(contributon_params)

    respond_to do |format|
      if @contributon.save
        format.html { redirect_to @contributon, notice: 'Contributon was successfully created.' }
        format.json { render :show, status: :created, location: @contributon }
      else
        format.html { render :new }
        format.json { render json: @contributon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contributons/1
  # PATCH/PUT /contributons/1.json
  def update
    respond_to do |format|
      if @contributon.update(contributon_params)
        format.html { redirect_to @contributon, notice: 'Contributon was successfully updated.' }
        format.json { render :show, status: :ok, location: @contributon }
      else
        format.html { render :edit }
        format.json { render json: @contributon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributons/1
  # DELETE /contributons/1.json
  def destroy
    @contributon.destroy
    respond_to do |format|
      format.html { redirect_to contributons_url, notice: 'Contributon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributon
      @contributon = Contributon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contributon_params
      params.require(:contributon).permit(:title, :content)
    end
end
