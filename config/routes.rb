Rails.application.routes.draw do
  api_version(module: "Api::V1", header: { name: "Accept", value: "application/vnd.sandbox.io; version=1" }, parameter: { name: "version", value: "1"}, path: { value: "v1" }, defaults: { format: "json"}, default: true) do
  
    resources :contents, only: [:create] do
    end
  
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
