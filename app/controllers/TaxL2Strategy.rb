class TaxL2Strategy
    attr_reader :salary
    attr_reader :minimum
    attr_reader :maximum

    def initialize(salary = {})
        @salary = salary           
        @minimum = 20000
        @maximum = 40000
    end

    def tax
        if(salary > maximum)
            tax = ((maximum - minimum).to_f * 10 / 100).round(2)
        elsif(salary > minimum and salary < maximum)
            tax = ((salary - minimum).to_f * 10 / 100).round(2)
        else
            tax = 0
        end
    end
end