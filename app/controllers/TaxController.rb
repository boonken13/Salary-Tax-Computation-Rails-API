class TaxController < ApplicationController 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include Response
  def compute
    params.require(:employee_name)
    params.require(:annual_salary)

    name = params[:employee_name]
    salary = params[:annual_salary]

    @tax = Tax.new(name,salary).generate_monthly_payslip()
    json_response(@tax)
  end
end