class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /pics
  def index
    @pics = Pic.all
  end

  # GET /pics/1
  def show
  end

  # GET /pics/new
  def new
    @pic = Pic.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: 'Pic was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pics/1
  def update
    if @pic.update(pic_params)
      redirect_to @pic, notice: 'Pic was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pics/1
  def destroy
    @pic.destroy
    redirect_to pics_url, notice: 'Pic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pic_params
      params.require(:pic).permit(:description)
    end
end
