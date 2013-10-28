class BookselvesController < ApplicationController
  # GET /bookselves
  # GET /bookselves.json
  def index
    @bookselves = Bookself.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookselves }
    end
  end

  # GET /bookselves/1
  # GET /bookselves/1.json
  def show
    @bookself = Bookself.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookself }
    end
  end

  # GET /bookselves/new
  # GET /bookselves/new.json
  def new
    @bookself = Bookself.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookself }
    end
  end

  # GET /bookselves/1/edit
  def edit
    @bookself = Bookself.find(params[:id])
  end

  # POST /bookselves
  # POST /bookselves.json
  def create
    @bookself = Bookself.new(params[:bookself])

    respond_to do |format|
      if @bookself.save
        format.html { redirect_to @bookself, notice: 'Bookself was successfully created.' }
        format.json { render json: @bookself, status: :created, location: @bookself }
      else
        format.html { render action: "new" }
        format.json { render json: @bookself.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookselves/1
  # PUT /bookselves/1.json
  def update
    @bookself = Bookself.find(params[:id])

    respond_to do |format|
      if @bookself.update_attributes(params[:bookself])
        format.html { redirect_to @bookself, notice: 'Bookself was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookself.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookselves/1
  # DELETE /bookselves/1.json
  def destroy
    @bookself = Bookself.find(params[:id])
    @bookself.destroy

    respond_to do |format|
      format.html { redirect_to bookselves_url }
      format.json { head :no_content }
    end
  end
end
