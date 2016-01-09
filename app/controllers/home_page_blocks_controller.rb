class HomePageBlocksController < ApplicationController
  before_action :set_home_page_block, only: [:show, :edit, :update, :destroy]

  # GET /home_page_blocks
  # GET /home_page_blocks.json
  def index
    if not signed_in?
      redirect_back_or signin_path
    end
    @home_page_blocks = HomePageBlock.all
  end

  # GET /home_page_blocks/1
  # GET /home_page_blocks/1.json
  def show
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # GET /home_page_blocks/new
  def new
    if not signed_in?
      redirect_back_or signin_path
    end
    @home_page_block = HomePageBlock.new
  end

  # GET /home_page_blocks/1/edit
  def edit
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # POST /home_page_blocks
  # POST /home_page_blocks.json
  def create
    if not signed_in?
      redirect_back_or signin_path
    end
    @home_page_block = HomePageBlock.new(home_page_block_params)

    respond_to do |format|
      if @home_page_block.save
        format.html { redirect_to @home_page_block, notice: 'Блок успешно создан!' }
        format.json { render :show, status: :created, location: @home_page_block }
      else
        format.html { render :new }
        format.json { render json: @home_page_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_page_blocks/1
  # PATCH/PUT /home_page_blocks/1.json
  def update
    if not signed_in?
      redirect_back_or signin_path
    end
    respond_to do |format|
      if @home_page_block.update(home_page_block_params)
        format.html { redirect_to @home_page_block, notice: 'Блок успешно обновлен!' }
        format.json { render :show, status: :ok, location: @home_page_block }
      else
        format.html { render :edit }
        format.json { render json: @home_page_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_page_blocks/1
  # DELETE /home_page_blocks/1.json
  def destroy
    if not signed_in?
      redirect_back_or signin_path
    end
    @home_page_block.destroy
    respond_to do |format|
      format.html { redirect_to home_page_blocks_url, notice: 'Блок успешно удален!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_page_block
      @home_page_block = HomePageBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_page_block_params
      params.require(:home_page_block).permit(:header, :body)
    end
end
