class AudiobooksController < ApplicationController
  before_action :set_audiobook, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :ensure_admin_user, only: [:new, :create, :update, :destroy]

  # GET /audiobooks or /audiobooks.json
  def index
    @audiobooks = Audiobook.all

      if params[:query].present?
      query = "%#{params[:query]}%"
      @audiobooks = @audiobooks.where("title ILIKE ? OR description ILIKE ?", query, query)
    end

    respond_to do |format|
      format.html
      format.turbo_stream { render partial: "audiobooks/audiobook_list", locals: { audiobooks: @audiobooks }}
    end
  end

    def ensure_admin_user
    unless current_user&.email == Rails.application.credentials.dig(:admin, :email)
      redirect_to root_path, alert: "You must be an admin to do that."
    end
  end

  # GET /audiobooks/1 or /audiobooks/1.json
  def show
  end

  # GET /audiobooks/new
  def new
    @audiobook = Audiobook.new
  end

  # GET /audiobooks/1/edit
  def edit
  end

  # POST /audiobooks or /audiobooks.json
  def create
    @audiobook = Audiobook.new(audiobook_params)

    respond_to do |format|
      if @audiobook.save
        format.html { redirect_to @audiobook, notice: "Audiobook was successfully created." }
        format.json { render :show, status: :created, location: @audiobook }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @audiobook.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /audiobooks/1 or /audiobooks/1.json
  def update
    respond_to do |format|
      if @audiobook.update(audiobook_params)
        format.html { redirect_to @audiobook, notice: "Audiobook was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @audiobook }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @audiobook.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /audiobooks/1 or /audiobooks/1.json
  def destroy
    @audiobook.destroy!

    respond_to do |format|
      format.html { redirect_to audiobooks_path, notice: "Audiobook was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audiobook
      @audiobook = Audiobook.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def audiobook_params
      params.expect(audiobook: [ :title, :description, :thumbnail_url, :video_url, :pro ])
    end
end
