Rails.application.routes.draw do

  # Para configurar subdominio
  # namespace :api, defaults: { format: 'json' }, constraints: { subdomain: 'api' }, path: "/" do
  # exemplo: api.meudominio.com.br/usuarios

  # Para acessar usando path
  # namespace :api, defaults: { format: 'json' }  do
  # exemplo: meudominio.com.br/api/usuarios
  
  namespace :api, defaults: { format: 'json' }  do
    
  end
end
