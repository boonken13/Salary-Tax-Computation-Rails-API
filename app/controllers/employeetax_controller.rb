class EmployeetaxController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include Response

  def index
    @employee_taxs = Employeetax.all
    json_response(@employee_taxs)
  end

  def create
    params.require(:employee_name)
    params.require(:annual_salary)

    name = params[:employee_name]
    salary = params[:annual_salary]

    @payslip = Tax.new(name,salary.to_f).generate_monthly_payslip()
    
    @employee_tax = Employeetax.create(
        employee_name: name,
        annual_salary: salary.to_f,
        monthly_income_tax: @payslip.monthly_income_tax
    )
    json_response(@employee_tax)
  end

  def show
    @employee_tax = Employeetax.find(params[:id])
    json_response(@employee_tax)
  end

  def update
    params.require(:employee_name)
    params.require(:annual_salary)

    name = params[:employee_name]
    salary = params[:annual_salary]

    @payslip = Tax.new(name,salary.to_f).generate_monthly_payslip()

    @employee_tax = Employeetax.find(params[:id])

    @employee_tax.update(
        employee_name: name,
        annual_salary: salary.to_f,
        monthly_income_tax: @payslip.monthly_income_tax
    )
    json_response(@employee_tax)

  end

  def destroy
    @employee_tax = Employeetax.find(params[:id])
    @employee_tax.destroy
    render json: {message: "Successfully deleted record"}
  end
end
