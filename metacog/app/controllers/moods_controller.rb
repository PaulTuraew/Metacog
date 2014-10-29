class MoodsController < ApplicationController
before_action :set_mood, only: [:show, :edit, :update, :destroy] #before any action, call :set_post

  def index #where display to user
    @moods = Mood.all
    # @moods = if params[:search]
    #   Mood.search(params[:search]).sorted.published
    # else
    #   Mood.sorted.latest.published
    # end
  end

  def show
  end

  def new
    @mood = Mood.new
  end

  def edit
  end

  def create
    @mood = Mood.new(mood_params)

    respond_to do |format|
      if @mood.save
        current_user.moods << @mood
        format.html { redirect_to @mood, notice: 'Mood was successfully logged.' }
        format.json { render :show, status: :created, location: @mood }
      else
        format.html { render :new }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mood.update(mood_params)
        format.html { redirect_to @mood, notice: 'Mood was successfully updated.' }
        format.json { render :show, status: :ok, location: @mood }
      else
        format.html { render :edit }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mood.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Mood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private #helper method and not an action
    # Use callbacks to share common setup or constraints between actions.
    def set_mood
      @mood = Mood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mood_params
      params.require(:mood).permit(:rating, :reason, :narrative, :date)
    end
end

