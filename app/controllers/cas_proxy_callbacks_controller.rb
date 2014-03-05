require "rubycas-client"

class CasProxyCallbacksController < CasProxyCallbackController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def receive_pgt
  	  logger.info "Got a receive_pgt call!"
  	  super
  end
end