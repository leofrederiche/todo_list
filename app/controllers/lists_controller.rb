class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find params[:id]
  end

  def create
    @list = List.new(list_params)

    if @list.save
      flash[:notice] = 'Lista criada com sucesso!'
      redirect_to list_path(@list.id)
    else
      flash[:error] = 'Verifique se preencheu os campos corretamente.'
      render :new
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :description)
  end
end
