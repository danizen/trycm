class XmlTestsController < ApplicationController
  before_action :set_xml_test, only: [:show, :edit, :update, :destroy]

  # GET /xml_tests
  # GET /xml_tests.json
  def index
    @xml_tests = XmlTest.all
  end

  # GET /xml_tests/1
  # GET /xml_tests/1.json
  def show
  end

  # GET /xml_tests/new
  def new
    @xml_test = XmlTest.new
  end

  # GET /xml_tests/1/edit
  def edit
  end

  # POST /xml_tests
  # POST /xml_tests.json
  def create
    @xml_test = XmlTest.new(xml_test_params)

    respond_to do |format|
      if @xml_test.save
        format.html { redirect_to @xml_test, notice: 'Xml test was successfully created.' }
        format.json { render :show, status: :created, location: @xml_test }
      else
        format.html { render :new }
        format.json { render json: @xml_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xml_tests/1
  # PATCH/PUT /xml_tests/1.json
  def update
    respond_to do |format|
      if @xml_test.update(xml_test_params)
        format.html { redirect_to @xml_test, notice: 'Xml test was successfully updated.' }
        format.json { render :show, status: :ok, location: @xml_test }
      else
        format.html { render :edit }
        format.json { render json: @xml_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xml_tests/1
  # DELETE /xml_tests/1.json
  def destroy
    @xml_test.destroy
    respond_to do |format|
      format.html { redirect_to xml_tests_url, notice: 'Xml test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xml_test
      @xml_test = XmlTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xml_test_params
      params.require(:xml_test).permit(:name, :xslt, :output)
    end
end
