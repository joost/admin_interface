# The AdminController is the parent class that makes sure all administrator actions
# require a logged-in User with an admin Role.
class Admin::BaseController < ApplicationController

  layout 'admin'

  # Replace this with your own authentication / authorization stuff
  before_filter :http_authentication
  # Example when using Devise gem
  # before_filter :authenticate_admin!

  # Add controller names you want to include as tab. Eg.
  #  @@tabs = %w(messages) # if you created a Admin::MessagesController using the admin_scaffold generator.
  cattr_accessor :tabs
  @@tabs = %w()

  #  GET /admin/
  def index
  end

private

  ADMIN_USERNAME = 'admin' # HTTP Basic admin username
  ADMIN_PASSWORD = 'admin' # HTTP Basic admin password

  def http_authentication
    authenticate_or_request_with_http_basic do |username, password|
      username == ADMIN_USERNAME && password == ADMIN_PASSWORD
    end
  end

end
