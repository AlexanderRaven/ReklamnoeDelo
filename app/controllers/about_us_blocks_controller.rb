class AboutUsBlocksController < ApplicationController
  before_action :set_about_us_block, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  # GET /about_us_blocks
  # GET /about_us_blocks.json
  def index
    @about_us_blocks = AboutUsBlock.all
  end

  # GET /about_us_blocks/1
  # GET /about_us_blocks/1.json
  def show
  end

  # GET /about_us_blocks/new
  def new
    @about_us_block = AboutUsBlock.new
  end

  # GET /about_us_blocks/1/edit
  def edit
  end

  # POST /about_us_blocks
  # POST /about_us_blocks.json
  def create
    @about_us_block = AboutUsBlock.new(about_us_block_params)

    respond_to do |format|
      if @about_us_block.save
        format.html { redirect_to @about_us_block, notice: 'Блок страницы успешно создан!' }
        format.json { render :show, status: :created, location: @about_us_block }
      else
        format.html { render :new }
        format.json { render json: @about_us_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_us_blocks/1
  # PATCH/PUT /about_us_blocks/1.json
  def update
    respond_to do |format|
      if @about_us_block.update(about_us_block_params)
        format.html { redirect_to @about_us_block, notice: 'Блок страницы успешно обновлен!' }
        format.json { render :show, status: :ok, location: @about_us_block }
      else
        format.html { render :edit }
        format.json { render json: @about_us_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_us_blocks/1
  # DELETE /about_us_blocks/1.json
  def destroy
    @about_us_block.destroy
    respond_to do |format|
      format.html { redirect_to about_us_blocks_url, notice: 'Блок страницы успешно удален!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_us_block
      @about_us_block = AboutUsBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_us_block_params
      params.require(:about_us_block).permit(:header, :body)
    end
end
