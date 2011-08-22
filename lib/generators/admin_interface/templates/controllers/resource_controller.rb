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
  # Use meta_search and kaminari gem to load collection
  def collection
    @search ||= end_of_association_chain.search(params[:search])
    get_collection_ivar || begin
      c = @search.page(params[:page]).per(params[:per])
      set_collection_ivar(c.respond_to?(:scoped) ? c.scoped : c)
    end
  end

end