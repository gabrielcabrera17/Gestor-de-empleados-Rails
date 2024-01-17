class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]


  # GET /employees or /employees.json
  def index
    @employees = Employee.all
  end

  def search
    @employees = Employee.search_by_name(params[:query])
  end

  # GET /employees/1 or /employees/1.json
  def show

  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @citys = City.all
    @functions = Function.all
    @states = State.all
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees or /employees.json
  def create
    @employee = Employee.new(employee_params)
    @employee.city = City.find(params[:employee][:city_id])
    @employee.function = Function.find(params[:employee][:function_id])
    @employee.state = State.find(params[:employee][:state_id])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to employee_url(@employee), notice: "Employee was successfully created." }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to employee_url(@employee), notice: "Employee was successfully updated." }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1 or /employees/1.json
  def destroy
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url, notice: "Employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:name_employee, :city_id, :function_id, :state_id)
    end
end
