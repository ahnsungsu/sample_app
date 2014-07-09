class PortraitsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user, only: :destroy

  def index
    @portraits = Portrait.paginate(page: params[:page])
  end

  def create
    @portrait = current_user.portraits.build(portrait_params)
    if @portrait.save
      flash[:success] = "Portrait added!"
      redirect_to portraits_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @portrait.destroy
    redirect_to portraits_path
  end

  private

  def portrait_params
    params.require(:portrait).permit(:filename, :thumbnail, :description)
  end

  def correct_user
    @portrait = current_user.portraits.find_by(id: params[:id])
    redirect_to portrait_path if @portrait.nil?
  end
end
