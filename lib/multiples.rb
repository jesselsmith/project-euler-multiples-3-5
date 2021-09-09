# Enter your procedural solution here!

def collect_multiples(limit)
    multiples = []

    (limit - 1).times do |i|
        if (i+1) % 3 == 0 || (i+1) % 5 == 0
            multiples.push(i+1) 
        end    
    end
    multiples
end

def sum_multiples(limit)
    sum = 0

    (limit - 1).times do |i|
        if (i+1) % 3 == 0 || (i+1) % 5 == 0
            sum += i + 1
        end    
    end
    sum
end