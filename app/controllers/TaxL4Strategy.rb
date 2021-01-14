class TaxL4Strategy
    attr_reader :salary
    attr_accessor :minimum
    attr_accessor :maximum
    
    

    def initialize(salary = {})
        @salary = salary
        @minimum = 80000
        @maximum = 180000
    end

    def tax
        if(salary > maximum)
            tax = ((maximum - minimum).to_f * 30 / 100).round(2)
        elsif(salary > minimum and salary < maximum)
            tax = ((salary - minimum).to_f * 30 / 100).round(2)
        else
            tax = 0
        end
    end
end