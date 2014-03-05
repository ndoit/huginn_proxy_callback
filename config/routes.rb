
Rails.application.routes.draw do
  post 'cas_proxy_callback/retrieve_pgt', to: 'cas_proxy_callbacks#retrieve_pgt'
  post 'cas_proxy_callback/receive_pgt', to: 'cas_proxy_callbacks#receive_pgt'
  get 'cas_proxy_callback/retrieve_pgt', to: 'cas_proxy_callbacks#retrieve_pgt'
  get 'cas_proxy_callback/receive_pgt', to: 'cas_proxy_callbacks#receive_pgt'
end