class NumbersController < ApplicationController
def new
@number = Number.new
end

def create
@board = Board.new
@number = Number.new(number_param)
if @number.save
  #could be save! -- if we want to have exaption
render 'show'
else
  render plain: "Sorry, please read ruls again"
end

end

def show
@number = Number.find(params[:id])
  end

private
def number_param
params.require(:number).permit(:numb)
end

end
