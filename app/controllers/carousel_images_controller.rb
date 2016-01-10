class CarouselImagesController < ApplicationController
  before_action :set_carousel_image, only: [:show, :edit, :update, :destroy]

  # GET /carousel_images
  # GET /carousel_images.json
  def index
    if not signed_in?
      redirect_back_or signin_path
    end
    @carousel_images = CarouselImage.all
  end

  # GET /carousel_images/1
  # GET /carousel_images/1.json
  def show
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # GET /carousel_images/new
  def new
    if not signed_in?
      redirect_back_or signin_path
    end
    @carousel_image = CarouselImage.new
  end

  # GET /carousel_images/1/edit
  def edit
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # POST /carousel_images
  # POST /carousel_images.json
  def create
    if not signed_in?
      redirect_back_or signin_path
    end
    @carousel_image = CarouselImage.new(carousel_image_params)

    respond_to do |format|
      if @carousel_image.save
        format.html { redirect_to @carousel_image, notice: 'Carousel image was successfully created.' }
        format.json { render :show, status: :created, location: @carousel_image }
      else
        format.html { render :new }
        format.json { render json: @carousel_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carousel_images/1
  # PATCH/PUT /carousel_images/1.json
  def update
    if not signed_in?
      redirect_back_or signin_path
    end
    respond_to do |format|
      if @carousel_image.update(carousel_image_params)
        format.html { redirect_to @carousel_image, notice: 'Carousel image was successfully updated.' }
        format.json { render :show, status: :ok, location: @carousel_image }
      else
        format.html { render :edit }
        format.json { render json: @carousel_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carousel_images/1
  # DELETE /carousel_images/1.json
  def destroy
    if not signed_in?
      redirect_back_or signin_path
    end
    @carousel_image.destroy
    respond_to do |format|
      format.html { redirect_to carousel_images_url, notice: 'Carousel image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carousel_image
      @carousel_image = CarouselImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carousel_image_params
      params.require(:carousel_image).permit( :title, :avatar)
    end
end
