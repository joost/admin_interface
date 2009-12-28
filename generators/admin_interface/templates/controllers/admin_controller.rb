# The AdminController is the parent class that makes sure all administrator actions
# require a logged-in User with an admin Role.
class AdminController < ApplicationController

  layout 'admin'

  # Replace this with your own authentication / authorization stuff
  before_filter :http_authentication

  # Add controller names you want to include as tab. Eg.
  #  @@tabs = %w(messages) # if you created a Admin::MessagesController using the admin_scaffold generator.
  cattr_accessor :tabs
  @@tabs = %w()

  #  GET /admin/
  def index
  end

private

  ADMIN_USERNAME = 'admin'
  ADMIN_PASSWORD = 'admin'

  def http_authentication
    authenticate_or_request_with_http_basic do |username, password|
      username == ADMIN_USERNAME && password == ADMIN_PASSWORD
    end
  end

end
