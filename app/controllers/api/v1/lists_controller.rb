class Api::V1::ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists
  end

  def show
    @list = List.find params[:id]
    render json: @list
  end

  def create
    @list = List.new(list_params)

    if @list.save
      render json: @list
    else
      render json: @list.errors
    end
  end

  def destroy
    @list = List.find params[:id]
    @list.destroy
    render json: {notice: 'Lista deletada com sucesso!'}
  end

  private
  def list_params
    params.require(:list).permit(:title, :description)
  end
end
