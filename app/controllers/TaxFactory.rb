require_relative "TaxL1Strategy"
require_relative "TaxL2Strategy"
require_relative "TaxL3Strategy"
require_relative "TaxL4Strategy"
require_relative "TaxLMaxStrategy"

class TaxFactory
    def self.for(salary, strategyset)
        if(strategyset == "R1")
            TaxL1Strategy.new(salary).tax() + TaxL2Strategy.new(salary).tax() + TaxL3Strategy.new(salary).tax() + TaxL4Strategy.new(salary).tax() + TaxLMaxStrategy.new(salary).tax()      
        else
            raise 'Unsupported type of report'
        end
    end
end