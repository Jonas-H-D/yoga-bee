class ResearchsController < ApplicationController
  def index
  end

  def home
  end

  def new
    @research = Reserach.new
  end

  def create
   @research = Research.new(research_params)
  if @research.save
   redirect_to research_path(@research)
  else
   render 'index'
  end
 end

  def show
  @research = Research.find(params[:id])
 end

 private

 def research_params
   params.require(:research).permit(:arrival, :departure, :city)
 end

end
