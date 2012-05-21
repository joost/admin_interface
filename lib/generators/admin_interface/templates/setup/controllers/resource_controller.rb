class Admin::ResourceController < Admin::BaseController

  inherit_resources # gem
  defaults :route_prefix => 'admin'

  # inherited_resources options
  # nested_belongs_to :user, :optional => true

  def destroy_all
    destroyed_resources = resource_class.destroy_all(:id => params[:ids])
    flash[:notice] = "#{destroyed_resources.size} objects destroyed."
    redirect_to :back
  end

protected

  # Overwrites inherited_resources gem version.
  # Use meta_search and kaminari gem to load collection.
  # Saves the per parameter to the user's session[:admin_per].
  def collection
    @search ||= end_of_association_chain.search(params[:q])
    get_collection_ivar || begin
      session[:admin_per] = params[:per] || session[:admin_per] # Save the per_page to the user's session
      c = @search.result.page(params[:page]).per(session[:admin_per])
      set_collection_ivar(c.respond_to?(:scoped) ? c.scoped : c)
    end
  end

end