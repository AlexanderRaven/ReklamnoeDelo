class CommandItemsController < ApplicationController
  before_action :set_command_item, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  # GET /command_items
  # GET /command_items.json
  def index
    @command_items = CommandItem.all
  end

  # GET /command_items/1
  # GET /command_items/1.json
  def show
  end

  # GET /command_items/new
  def new
    @command_item = CommandItem.new
  end

  # GET /command_items/1/edit
  def edit
  end

  # POST /command_items
  # POST /command_items.json
  def create
    @command_item = CommandItem.new(command_item_params)

    respond_to do |format|
      if @command_item.save
        format.html { redirect_to @command_item, notice: 'Command item was successfully created.' }
        format.json { render :show, status: :created, location: @command_item }
      else
        format.html { render :new }
        format.json { render json: @command_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /command_items/1
  # PATCH/PUT /command_items/1.json
  def update
    respond_to do |format|
      if @command_item.update(command_item_params)
        format.html { redirect_to @command_item, notice: 'Command item was successfully updated.' }
        format.json { render :show, status: :ok, location: @command_item }
      else
        format.html { render :edit }
        format.json { render json: @command_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /command_items/1
  # DELETE /command_items/1.json
  def destroy
    @command_item.destroy
    respond_to do |format|
      format.html { redirect_to command_items_url, notice: 'Command item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_command_item
      @command_item = CommandItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def command_item_params
      params.require(:command_item).permit(:name, :position, :avatar)
    end
end
