class API::ListsController < API::APIController
  def index
    @lists = List.all
    render json: @lists, status: :ok
  end

  def create
    @list = List.new(list_params)

    if @list.save
      flash[:notice] = 'Lista criada com sucesso!'
      render json: @list, status: :ok
    else
      flash[:error] = 'Verifique se preencheu os campos corretamente.'
      render json: @list.errors, status: :no_content
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :description)
  end
end
