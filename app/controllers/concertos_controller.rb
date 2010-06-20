class ConcertosController < ApplicationController
  # GET /concertos
  # GET /concertos.xml
  def index
    @concertos = Concerto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @concertos }
    end
  end

  # GET /concertos/1
  # GET /concertos/1.xml
  def show
    @concerto = Concerto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @concerto }
    end
  end

  # GET /concertos/new
  # GET /concertos/new.xml
  def new
    @concerto = Concerto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @concerto }
    end
  end

  # GET /concertos/1/edit
  def edit
    @concerto = Concerto.find(params[:id])
  end

  # POST /concertos
  # POST /concertos.xml
  def create
    @concerto = Concerto.new(params[:concerto])

    respond_to do |format|
      if @concerto.save
        flash[:notice] = 'Concerto was successfully created.'
        format.html { redirect_to(@concerto) }
        format.xml  { render :xml => @concerto, :status => :created, :location => @concerto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @concerto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /concertos/1
  # PUT /concertos/1.xml
  def update
    @concerto = Concerto.find(params[:id])

    respond_to do |format|
      if @concerto.update_attributes(params[:concerto])
        flash[:notice] = 'Concerto was successfully updated.'
        format.html { redirect_to(@concerto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @concerto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /concertos/1
  # DELETE /concertos/1.xml
  def destroy
    @concerto = Concerto.find(params[:id])
    @concerto.destroy

    respond_to do |format|
      format.html { redirect_to(concertos_url) }
      format.xml  { head :ok }
    end
  end
end
