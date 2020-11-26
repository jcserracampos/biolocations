class MainCompaniesController < ApplicationController
  before_action :set_main_company, only: [:show, :edit, :update, :destroy]

  # GET /main_companies
  # GET /main_companies.json
  def index
    @main_companies = MainCompany.all
  end

  # GET /main_companies/1
  # GET /main_companies/1.json
  def show
  end

  # GET /main_companies/new
  def new
    @main_company = MainCompany.new
  end

  # GET /main_companies/1/edit
  def edit
  end

  # POST /main_companies
  # POST /main_companies.json
  def create
    @main_company = MainCompany.new(main_company_params)

    respond_to do |format|
      if @main_company.save
        format.html { redirect_to @main_company, notice: 'Main company was successfully created.' }
        format.json { render :show, status: :created, location: @main_company }
      else
        format.html { render :new }
        format.json { render json: @main_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_companies/1
  # PATCH/PUT /main_companies/1.json
  def update
    respond_to do |format|
      if @main_company.update(main_company_params)
        format.html { redirect_to @main_company, notice: 'Main company was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_company }
      else
        format.html { render :edit }
        format.json { render json: @main_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_companies/1
  # DELETE /main_companies/1.json
  def destroy
    @main_company.destroy
    respond_to do |format|
      format.html { redirect_to main_companies_url, notice: 'Main company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_company
      @main_company = MainCompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_company_params
      params.require(:main_company).permit(:nome, :cnpj, :brand)
    end
end
