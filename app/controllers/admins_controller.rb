class AdminsController < ProtectedController
  before_action :set_admin, only: [:show, :update, :destroy]
  before_action :admin?

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all

    render json: @admins
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
    render json: @admin
  end

  # POST /admins
  # POST /admins.json
  def create
    # why doesn't current_user.admin work? Is it because admin hasOne user
    # and not vice versa?
    
    # if current_user.admin
      @admin = Admin.new(admin_params)
      p current_user
      @admin.created_by = current_user.id
      if @admin.save
        render json: @admin, status: :created, location: @admin
      else
        render json: @admin.errors, status: :unprocessable_entity
      end
    # else
      p "current user isn't an admin? "
      p current_user
      # head :unauthorized
    # end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    @admin = Admin.find(params[:id])

    if @admin.update(admin_params)
      head :no_content
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy

    head :no_content
  end

  private

  def admin?
    if current_user.admin
      true
    else
      false
    end
  end

  def set_admin
    @admin = Admin.find(params[:id]) if admin?
  end

  def admin_params
    params.require(:admin)
          .permit(:user_id)
  end
end
