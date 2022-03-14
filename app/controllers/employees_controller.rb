class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]

  # GET /employees or /employees.json
  def index
    @employees = Employee.all
    @timeb = Time.now
  end

  # GET /employees/1 or /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees or /employees.json
  def create
    @employee = Employee.new(employee_params)

      if @employee.save
        # head :bad_request
        redirect_to employee_path(@employee), notice: "Employee was successfully created."
        # render :show, status: :created, location: @employee
      else
        render :new, status: :unprocessable_entity
        render json: @employee.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        #format.html { redirect_to employee_url(@employee), notice: "Employee was successfully updated." }
        format.html { render :show, status: :ok, location: @employee, notice: "Employee was successfully updated."  }
      else
        format.html { render :edit, status: 422 }
        format.json { render json: @employee.errors, status: 422 }
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
      params.require(:employee).permit(:first_name, :last_name, :email, :contact, :instagram)
    end
end
