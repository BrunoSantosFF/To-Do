class ApplicationController < ActionController::Base
  # Sobrescreve o comportamento padrão do Devise após logout
  # Redireciona para a página de login
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path 
  end

  def after_sign_in_path_for(resource_or_scope)
    lists_path # Redireciona para a página de lista de tarefas
  end
end
