class PlayersController < ProtectedController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    render json: @players
  end

  # GET /players/1
  # GET /players/1.json
  def show
    render json: @player
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    # puts "Player is "
    # puts @player
    # @player.profile_id = current_user.profile_id
    # p "player is now ", @player

    @player.profile_id = current_user.profile.id

    if @player.save
      render json: @player, status: :created, location: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @player = Player.find(params[:id])
    @player.profile_id = current_user.profile_id
    if @player.update(player_params)
      head :no_content
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy

    head :no_content
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:game_id, :character_id)
  end
end
