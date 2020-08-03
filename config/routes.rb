Rails.application.routes.draw do
  get '/team', to: 'static#team'

  get '/contact', to: 'static#contact'

  get 'welcome/:user_entry', to: 'welcome#show', as: 'welcome'

  get 'gossip/:gossip_id', to: 'message#gossip', as: 'gossip'
end
 