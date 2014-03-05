# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'casclient/frameworks/rails/cas_proxy_callback_controller' 

# Initialize the Rails application.
Rails.application.initialize!

# enable detailed CAS logging for easier troubleshooting
#this is causing bugs, so screw it, commenting it out
#cas_logger = CASClient::Logger.new(RAILS_ROOT+'/log/cas.log')
#cas_logger.level = Logger::DEBUG

CASClient::Frameworks::Rails::Filter.configure(
:cas_base_url => "https://login-test.cc.nd.edu/cas/",
:proxy_retrieval_url => "https://localhost:4000/cas_proxy_callback/retrieve_pgt",
:proxy_callback_url => "https://localhost:4000/cas_proxy_callback/receive_pgt"
#:logger => cas_logger
)
