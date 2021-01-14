require_relative "TaxFactory"

class Tax
    attr_reader :name
    attr_reader :salary
    attr_accessor :taxinfo

    def initialize(name, salary)
        @name = name
        @salary = salary
    end
    def tax()
        TaxFactory.for(salary, "R1")
    end
    def generate_monthly_payslip()
        # employee_name = "Monthly Payslip for: '#{name}'"
        # gross_monthly_income = "Gross Monthly Income: $#{sprintf('%.2f',salary)}"
        # monthly_income_tax = "Monthly Income Tax: $#{sprintf('%.2f',tax())}"
        # net_monthly_income = "Net Monthly Income: $#{sprintf('%.2f',salary - tax())}"

        employee_name = name
        gross_monthly_income = sprintf('%.2f',salary)
        monthly_income_tax = sprintf('%.2f',tax())
        net_monthly_income = sprintf('%.2f',salary - tax())

        return Payslip.new(employee_name, gross_monthly_income, monthly_income_tax, net_monthly_income)
    end
end

class Payslip
    attr_accessor :employee_name
    attr_accessor :gross_monthly_income
    attr_accessor :monthly_income_tax
    attr_accessor :net_monthly_income

    def initialize(employee_name, gross_monthly_income, monthly_income_tax, net_monthly_income)
        @employee_name = employee_name
        @gross_monthly_income = gross_monthly_income
        @monthly_income_tax = monthly_income_tax
        @net_monthly_income = net_monthly_income
    end
end


