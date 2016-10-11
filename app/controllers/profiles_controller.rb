class ProfilesController < ProtectedController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = if params[:user_id]
                  Profile.find_by(user: params[:user_id])
                else
                  Profile.all
                end

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    render json: @profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    # @profile = Profile.new(profile_params)
    # @proflie.user_id = current_user.id
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if current_user.id ==
       profile_params[:user_id].to_i &&
       @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    if current_user.profile == @profile
      @profile.destroy
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
    # @profile = current_user.profile
  end

  def profile_params
    params.require(:profile)
          .permit(:first_name, :last_name, :nationality, :user_id)
  end
end
