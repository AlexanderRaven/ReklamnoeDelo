class ContactMessagesController < ApplicationController
  before_action :set_contact_message, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  # GET /contact_messages
  # GET /contact_messages.json
  def index
    @contact_messages = ContactMessage.all
  end

  # GET /contact_messages/1
  # GET /contact_messages/1.json
  def show
  end

  # GET /contact_messages/new
  def new
    @contact_message = ContactMessage.new
  end

  # GET /contact_messages/1/edit
  def edit
  end

  # POST /contact_messages
  # POST /contact_messages.json
  def create
    @contact_message = ContactMessage.new(contact_message_params)

    respond_to do |format|
      if @contact_message.save
        format.html { redirect_to contact_path, notice: 'Сообщение успешно отправлено!' }
        format.json { render :show, status: :created, location: @contact_message }
      else
        format.html { redirect_to contact_path, :flash => { :error => @contact_message.errors.full_messages.join(', ') }}
        format.json { render json: @contact_message.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /contact_messages/1
  # PATCH/PUT /contact_messages/1.json
  def update
    respond_to do |format|
      if @contact_message.update(contact_message_params)
        format.html { redirect_to @contact_message, notice: 'Сообщение успешно обновлено!' }
        format.json { render :show, status: :ok, location: @contact_message }
      else
        format.html { redirect_to @contact_message }
        format.json { render json: @contact_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_messages/1
  # DELETE /contact_messages/1.json
  def destroy
    @contact_message.destroy
    redirect_to contact_messages_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_message
      @contact_message = ContactMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_message_params
      params.require(:contact_message).permit(:name, :email, :telephone, :message)
    end
end
