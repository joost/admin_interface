class Admin::ResourceController < Admin::BaseController

  before_filter :filter_load_resources, :only => [:index]
  before_filter :filter_load_resource, :only => [:show, :edit, :update, :destroy]

  def index
    @resources = resource_class.paginate(:page => params[:page], :per_page => params[:per_page])
  end

  def show
  end

  def new
    @resource = resource_class.new
    instance_variable_set("@#{resource_instance_variable_name}", @resource)
  end

  def edit
  end

  def create
    @resource = resource_class.new(params_hash_for_resource)

    if @resource.save
      redirect_to([:admin, @resource], :notice => 'Object was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    if @resource.update_attributes(params_hash_for_resource)
      redirect_to([:admin, @resource], :notice => 'Object was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @resource.destroy

    redirect_to :action => :index
  end

  def destroy_all
    destroyed_resources = resource_class.destroy_all(:id => params[:ids])
    flash[:notice] = "#{destroyed_resources.size} objects destroyed."
    redirect_to :action => :index
  end

protected

  def current_resources
    @resources ||= resource_class.paginate(:page => params[:page], :per_page => params[:per_page])
  end

  def current_resource
    @resource ||= resource_class.find(params[:id])
  end

  def resource_class
    controller_name.singularize.camelize.constantize
  end

  def filter_load_resources
    instance_variable_set("@#{resources_instance_variable_name}", current_resources)
  end

  def filter_load_resource
    instance_variable_set("@#{resource_instance_variable_name}", current_resource)
  end

  def resources_instance_variable_name
    instance_variable_name
  end

  def resource_instance_variable_name
    instance_variable_name.singularize
  end

  # The name of the instance variable that load_object should assign to.
  # By default this is the controller_name.
  def instance_variable_name
    controller_name
  end

  def params_hash_for_resource
    params[resource_instance_variable_name]
  end

end