class ListsController < ApplicationController
  # Callback para chamar a função antes das outras
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # Função para chamar todas as listas do banco de dados
  def index
    @lists = List.all
  end

  # Função para mostrar os itens na pagina de Show 
  def show
    @item = Item.new
  end

  # Função para criar a lista vazia e renderizar a pagina New
  def new
    @list = List.new
  end

  # Função que cria a lista através dos parametros
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: "Lista criada com sucesso !!!!!"
    else
      render :new
    end
  end

  # Página de editar
  def edit
  end

  # Responsável por editar a lista
  def update
    if @list.update(list_params)
      redirect_to list_path(@list), notice: "Lista editada com sucesso !!!!"
    else 
      render :edit
    end
  end

  # Responsável por destruir a lista
  def destroy
    if @list.destroy
      redirect_to lists_path, notice: "Lista deletada com sucesso !!!!"
    else 
      redirect_to lists_path
    end
  end

  # Funçoes privadas 
  private

  # Encontrando o item pelo id nos parametros
  def set_list
    @list = List.find(params[:id]) 
  end

  # Responsável por filtrar os parâmetros que estão sendo enviados
  def list_params
    params.require(:list).permit(:name)
  end

end
