#characters controller

class CharactersController < ProtectedController
  before_action :set_character, only: [:show, :update, :destroy]

  skip_before_action :authenticate, only: [:index, :show]
  # before_action :admin?, only [:create, :update, :destroy]
  # skip_before_action :admin?,
  # skip_before_action :authenticate, only: [:login, :create]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all

    render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    render json: @character
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params) if admin?
    p current_user
    # add a 'created by?' @character.created_by = current_user.id

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    @character = Character.find(params[:id]) if admin?

    if @character.update(character_params)
      head :no_content
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    if admin?
      @character.destroy

      head :no_content
    end
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def admin?
    # current_user.admin
    if current_user.id == 12
      true
    else
      puts current_user
    end
  end

  def character_params
    params[:character]
  end
end
