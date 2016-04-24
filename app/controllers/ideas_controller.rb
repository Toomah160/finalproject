class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:index, :open]

  # GET /ideas
  # GET /ideas.json
  def index
    @ideas = Idea.all
    
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)
     #@idea = Idea.new(current_user.id)
    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(current_user.id)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ascending
      @ideas= Idea.ascending
  end
      def descending
      @ideas= Idea.ascending
   end
      def make_admin
      @user.toggle!(:admin)
      if @user.save
        redirect_to users_path, notice: 'User was
    successfully updated.'
      else
        flash[:alert]= 'Error updating user'
        redirect_to users_path
      end
    end

      def admin_only
      if !current_user.admin?
        redirect_to root_path
      end
    end 
    
    
   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params[:id])
    end
    
    def set_user
      @user = User.find(params[:id])
      if @user == current_user || current_user.admin?
        return @user
      else
        redirect_to root_path
      end
    end
    
     # Never trust parameters from the scary internet, only allow the white list through.
    def idea_params
      params.require(:idea).permit(:name, :description, :platform_id, :user_id, :help_needed, :designer, :developer)
     end
     
     def join_developer
       if @user.logged_in?
        current_user.id = :developer
      end
    end
    
    def join_designer
       if @user.logged_in?
        current_user.id = :designer
      end
    end
  end