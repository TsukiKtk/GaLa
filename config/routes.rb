Rails.application.routes.draw do
  root to:'welcome#index'

  get 'matematica/adicao', to:'matematica#adicao'
  post '/matematica/adicao', to:'matematica#calculate'

end
