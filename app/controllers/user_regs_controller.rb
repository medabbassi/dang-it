class UserRegsController < ApplicationController
  before_action :set_user_reg, only: %i[ show edit update destroy ]

  # GET /user_regs or /user_regs.json
  def index
    @user_regs = UserReg.all
  end

  # GET /user_regs/1 or /user_regs/1.json
  def show
  end

  # GET /user_regs/new
  def new
    @user_reg = UserReg.new
  end

  # GET /user_regs/1/edit
  def edit
  end

  # POST /user_regs or /user_regs.json
  def create
    @user_reg = UserReg.new(user_reg_params)

    respond_to do |format|
      if @user_reg.save
        format.html { redirect_to @user_reg, notice: "User reg was successfully created." }
        format.json { render :show, status: :created, location: @user_reg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_regs/1 or /user_regs/1.json
  def update
    respond_to do |format|
      if @user_reg.update(user_reg_params)
        format.html { redirect_to @user_reg, notice: "User reg was successfully updated." }
        format.json { render :show, status: :ok, location: @user_reg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_regs/1 or /user_regs/1.json
  def destroy
    @user_reg.destroy
    respond_to do |format|
      format.html { redirect_to user_regs_url, notice: "User reg was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reg
      @user_reg = UserReg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_reg_params
      params.require(:user_reg).permit(:username, :email, :password, :password_confirmation)
    end
end
