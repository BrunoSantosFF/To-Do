class ListsController < ApplicationController
  # Somente usuaários podem acessar as funções
  before_action :authenticate_user!
  # Callback para chamar a função antes das outras
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # Função para chamar todas as listas do banco de dados que pertence ao usuário
  def index
    @lists = current_user.lists
  end

  # Função para mostrar os itens na pagina de Show 
  def show
    @item = Item.new
  end

  # Função para criar a lista vazia e renderizar a pagina New
  def new
    @list = List.new
  end

  # Função que cria a lista através dos parametros e associa ao usuário logado
  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to lists_path, notice: "Lista criada com sucesso !!!!!"
    else
      render :new
    end
  end

  # Função da página de editar
  def edit
  end

  # Responsável por editar a lista
  def update
    if @list.update(list_params)
      redirect_to edit_list_path(@list), notice: "Lista editada com sucesso !!!!"
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

  # Encontrando a lista do usuário logado pelo id nos parâmetros
  def set_list
    @list = current_user.lists.find(params[:id])
  # Tratando exeção de não encontrar a lista do usuário
  rescue ActiveRecord::RecordNotFound
    redirect_to lists_path, alert: "Lista não encontrada"
  end

  # Responsável por filtrar os parâmetros que estão sendo enviados
  def list_params
    params.require(:list).permit(:name, items_attributes: [:title, :completed])
  end

end
