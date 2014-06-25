class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
    @test.xslt = <<EOF
<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

</xsl:stylesheet>
EOF
    @test.output = <<EOF
<?xml version="1.0" encoding="UTF-8"?> 
<Passed/>
EOF
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    if @test.save
      flash[:notice] = 'Test was successfully created.'
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    @test.update(test_params)
    flash[:notice] = 'Test was successfully updated.'
    redirect_to :action => 'index'
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    flash[:notice] = 'Test was successfully destroyed.'
    redirect_to :action => 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name, :xslt, :output)
    end
end
