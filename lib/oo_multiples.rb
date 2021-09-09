# Enter your object-oriented solution here!
class Multiples
    @multipleArray
    def initialize(limit)
        if limit.nil?
            raise ArgumentError.new "There must be a limit!"
        end
        @limit = limit
    end

    def collect_multiples()
        if(@multipleArray.nil?)
            @multipleArray = []
            (@limit - 1).times do |i|
                if (i+1) % 3 == 0 || (i+1) % 5 == 0
                    @multipleArray.push(i+1) 
                end    
            end
        end
        @multipleArray
    end

    def sum_multiples()
        if !@multipleArray.nil?
            @multipleArray.reduce do |sum, current|
                sum + current
            end  
        else
            sum = 0
            (@limit - 1).times do |i|
                if (i+1) % 3 == 0 || (i+1) % 5 == 0
                    sum += i + 1
                end    
            end
            sum
        end
    end
end