class Admin::<%= controller_class_name %>Controller < Admin::BaseController
  
  before_filter :load_<%= file_name %>, :only => [:show, :edit, :destroy]
  
  # GET /<%= table_name %>
  # GET /<%= table_name %>.xml
  def index
    <% if defined?(Searchlogic) && defined?(WillPaginate) -%>
    # Getting objects with Searchlogic and WillPaginate'ion
    @search = <%= class_name %>.search(params[:search])
    @<%= table_name %> = @search.paginate(:page => params[:page], :per_page => params[:per_page])
    <% elsif defined?(WillPaginate) -%>
    # Getting objects with WillPaginate'ion
    @<%= table_name %> = <%= class_name %>.paginate(:page => params[:page], :per_page => params[:per_page])
    <% else -%>
    @<%= table_name %> = <%= class_name %>.all
    <% end -%>

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @<%= table_name %> }
    end
  end

  # GET /<%= table_name %>/1
  # GET /<%= table_name %>/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @<%= file_name %> }
    end
  end

  # GET /<%= table_name %>/new
  # GET /<%= table_name %>/new.xml
  def new
    @<%= file_name %> = <%= class_name %>.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @<%= file_name %> }
    end
  end

  # GET /<%= table_name %>/1/edit
  def edit
  end

  # POST /<%= table_name %>
  # POST /<%= table_name %>.xml
  def create
    @<%= file_name %> = <%= class_name %>.new(params[:<%= file_name %>])

    respond_to do |format|
      if @<%= file_name %>.save
        flash[:notice] = '<%= class_name %> was successfully created.'
        format.html { redirect_to([:admin, @<%= file_name %>]) }
        format.xml  { render :xml => @<%= file_name %>, :status => :created, :location => @<%= file_name %> }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @<%= file_name %>.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /<%= table_name %>/1
  # PUT /<%= table_name %>/1.xml
  def update
    respond_to do |format|
      if @<%= file_name %>.update_attributes(params[:<%= file_name %>])
        flash[:notice] = '<%= class_name %> was successfully updated.'
        format.html { redirect_to([:admin, @<%= file_name %>]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @<%= file_name %>.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /<%= table_name %>/1
  # DELETE /<%= table_name %>/1.xml
  def destroy
    @<%= file_name %>.destroy

    respond_to do |format|
      format.html { redirect_to(admin_<%= table_name %>_url) }
      format.xml  { head :ok }
    end
  end

  def destroy_all
    destroyed_<%= table_name %> = <%= class_name %>.destroy_all(:id => params[:ids])
    flash[:notice] = "#{destroyed_<%= table_name %>.size} <%= table_name %> destroyed."
    redirect_to admin_<%= table_name %>_path
  end

  private
  
  def load_<%= file_name %>
    @<%= file_name %> = <%= class_name %>.find(params[:id])
  end

end
