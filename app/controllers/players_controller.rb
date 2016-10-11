class PlayersController < ProtectedController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = if params[:game_id] && params[:profile_id]
                 Player.where(game_id: params[:game_id],
                              profile_id: params[:profile_id])
               else
                 @players = Player.all
               end
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

    @player.profile = current_user.profile if current_user.profile
    # what if a user doesn't have a profile!? ^^^^^ guard

    if current_user.profile && @player.save
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
    params.require(:player).permit(:game_id, :character_id, :kills)
  end
end
