class BirdImagesController < ApplicationController
  before_action :set_bird_image, only: [:show, :edit, :update, :destroy]

  # GET /bird_images
  # GET /bird_images.json
  def index
    @bird_images = BirdImage.all
  end

  # GET /bird_images/1
  # GET /bird_images/1.json
  def show
  end

  # GET /bird_images/new
  def new
    @bird_image = BirdImage.new
  end

  # GET /bird_images/1/edit
  def edit
  end

  # POST /bird_images
  # POST /bird_images.json
  def create
    @bird_image = BirdImage.new(bird_image_params)

    respond_to do |format|
      if @bird_image.save
        format.html { redirect_to @bird_image, notice: 'Bird image was successfully created.' }
        format.json { render :show, status: :created, location: @bird_image }
      else
        format.html { render :new }
        format.json { render json: @bird_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bird_images/1
  # PATCH/PUT /bird_images/1.json
  def update
    respond_to do |format|
      if @bird_image.update(bird_image_params)
        format.html { redirect_to @bird_image, notice: 'Bird image was successfully updated.' }
        format.json { render :show, status: :ok, location: @bird_image }
      else
        format.html { render :edit }
        format.json { render json: @bird_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bird_images/1
  # DELETE /bird_images/1.json
  def destroy
    @bird_image.destroy
    respond_to do |format|
      format.html { redirect_to bird_images_url, notice: 'Bird image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bird_image
      @bird_image = BirdImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bird_image_params
      params.require(:bird_image).permit(:image, :bird)
    end
end
