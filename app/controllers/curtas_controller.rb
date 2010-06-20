class CurtasController < ApplicationController
  # GET /curtas
  # GET /curtas.xml
  def index
    @curtas = Curta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @curtas }
    end
  end

  # GET /curtas/1
  # GET /curtas/1.xml
  def show
    @curta = Curta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @curta }
    end
  end

  # GET /curtas/new
  # GET /curtas/new.xml
  def new
    @curta = Curta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @curta }
    end
  end

  # GET /curtas/1/edit
  def edit
    @curta = Curta.find(params[:id])
  end

  # POST /curtas
  # POST /curtas.xml
  def create
    @curta = Curta.new(params[:curta])

    respond_to do |format|
      if @curta.save
        flash[:notice] = 'Curta was successfully created.'
        format.html { redirect_to(@curta) }
        format.xml  { render :xml => @curta, :status => :created, :location => @curta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @curta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /curtas/1
  # PUT /curtas/1.xml
  def update
    @curta = Curta.find(params[:id])

    respond_to do |format|
      if @curta.update_attributes(params[:curta])
        flash[:notice] = 'Curta was successfully updated.'
        format.html { redirect_to(@curta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @curta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /curtas/1
  # DELETE /curtas/1.xml
  def destroy
    @curta = Curta.find(params[:id])
    @curta.destroy

    respond_to do |format|
      format.html { redirect_to(curtas_url) }
      format.xml  { head :ok }
    end
  end
end
