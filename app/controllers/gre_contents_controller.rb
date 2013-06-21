class GreContentsController < ApplicationController
  skip_before_filter :authenticate, only: [:new, :create, :all]

  def all
    # render json:
  end

  # GET /gre_contents
  # GET /gre_contents.json
  def index
    @gre_contents = GreContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gre_contents }
    end
  end

  # GET /gre_contents/1
  # GET /gre_contents/1.json
  def show
    @gre_content = GreContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gre_content }
    end
  end

  # GET /gre_contents/new
  # GET /gre_contents/new.json
  def new
    @gre_content = GreContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gre_content }
    end
  end

  # GET /gre_contents/1/edit
  def edit
    @gre_content = GreContent.find(params[:id])
  end

  # POST /gre_contents
  # POST /gre_contents.json
  def create
    @gre_content = GreContent.new(params[:gre_content])

    respond_to do |format|
      if @gre_content.save
        format.html { redirect_to @gre_content, notice: 'Gre content was successfully created.' }
        format.json { render json: @gre_content, status: :created, location: @gre_content }
      else
        format.html { render action: "new" }
        format.json { render json: @gre_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gre_contents/1
  # PUT /gre_contents/1.json
  def update
    @gre_content = GreContent.find(params[:id])

    respond_to do |format|
      if @gre_content.update_attributes(params[:gre_content])
        format.html { redirect_to @gre_content, notice: 'Gre content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gre_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gre_contents/1
  # DELETE /gre_contents/1.json
  def destroy
    @gre_content = GreContent.find(params[:id])
    @gre_content.destroy

    respond_to do |format|
      format.html { redirect_to gre_contents_url }
      format.json { head :no_content }
    end
  end
end
