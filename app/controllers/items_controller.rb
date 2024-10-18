class ItemsController < ApplicationController
  # Callback 
  before_action :set_list

  # Criar um novo item associado à uma lista específica
  def create
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list), notice: "Item adicionado !!!!"
    else 
      render 'lists/show'
    end
  end

  # Atualizar o item na lista
  def update
    @item = @list.items.find(params[:id])
    if @item.update(item_params)
      redirect_to edit_list_path(@list), notice: "Atualizando o item da lista !!!!"
    else 
      render 'lists/edit'
    end
    
  end

  # Destruir o item da lista
  def destroy
    @item = @list.items.find(params[:id])
    if  @item.destroy
      redirect_to edit_list_path(@list), notice: "Destruindo o item da lista !!!!"
    else 
      render 'lists/edit'
    end
   
  end

  # Funções privadas 
  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:title, :completed)
  end
end
