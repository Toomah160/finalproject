class IdeasUsersController < ApplicationController
  before_action :set_ideas_user, only: [:show, :edit, :update, :destroy]

  # GET /ideas_users
  # GET /ideas_users.json
  def index
    @ideas_users = IdeasUser.all
  end

  # GET /ideas_users/1
  # GET /ideas_users/1.json
  def show
  end

  # GET /ideas_users/new
  def new
    @ideas_user = IdeasUser.new
  end

  # GET /ideas_users/1/edit
  def edit
  end

  # POST /ideas_users
  # POST /ideas_users.json
  def create
    @ideas_user = IdeasUser.new(ideas_user_params)

    respond_to do |format|
      if @ideas_user.save
        format.html { redirect_to @ideas_user, notice: 'Ideas user was successfully created.' }
        format.json { render :show, status: :created, location: @ideas_user }
      else
        format.html { render :new }
        format.json { render json: @ideas_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas_users/1
  # PATCH/PUT /ideas_users/1.json
  def update
    respond_to do |format|
      if @ideas_user.update(ideas_user_params)
        format.html { redirect_to @ideas_user, notice: 'Ideas user was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideas_user }
      else
        format.html { render :edit }
        format.json { render json: @ideas_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas_users/1
  # DELETE /ideas_users/1.json
  def destroy
    @ideas_user.destroy
    respond_to do |format|
      format.html { redirect_to ideas_users_url, notice: 'Ideas user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideas_user
      @ideas_user = IdeasUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideas_user_params
      params.require(:ideas_user).permit(:roles_id, :user_id)
    end
end
