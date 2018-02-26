require 'api_version_constraint'

Rails.application.routes.draw do

  # Para configurar subdominio
  # namespace :api, defaults: { format: 'json' }, constraints: { subdomain: 'api' }, path: "/" do
  # exemplo: api.meudominio.com.br/usuarios

  # Para acessar usando path
  # namespace :api, defaults: { format: 'json' }  do
  # exemplo: meudominio.com.br/api/usuarios
  
  namespace :api, defaults: { format: 'json' }  do
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :task
    end
  end

end
