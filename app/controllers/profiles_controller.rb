# class ProfilesController < ProtectedController
class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    render json: @profile
  end

  # POST /profiles
  # POST /profiles.json
  # def create
  #   @profile = current_user.build_profile(profile_params)
  #   unless current_user.profile
  #     if @profile.save
  #       render json: @profile, status: :created, location: @profile
  #     else
  #       render json: @profile.errors, status: :unprocessable_entity
  #     end
  # end
  #
  def create
    @profile = Profile.new(profile_params)
    current_user.profile = @profile

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if current_user.profile == @profile && @profile.update(profile_params)
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
    params.require(:profile).permit(:first_name, :last_name, :nationality)
  end
end
