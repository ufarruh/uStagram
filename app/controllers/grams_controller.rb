class GramsController < ApplicationController
  def index
    @grams = Gram.all
  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = Gram.create(gram_params)
    redirect_to root_path
  end


  private
  def gram_params
    params.require(:gram).permit(:message)
  end
end
