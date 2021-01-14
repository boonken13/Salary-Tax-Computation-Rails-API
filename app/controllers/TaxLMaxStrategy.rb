class TaxLMaxStrategy
    attr_reader :salary
    attr_accessor :minimum

    

    def initialize(salary = {})
        @salary = salary
        @minimum = 180000
    end

    def tax
        if(salary > minimum)
            tax = ((salary - minimum).to_f * 40 / 100).round(2)
        else
            tax = 0
        end
    end
end