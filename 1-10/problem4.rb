(100..999).to_a.combination(2).map{|a, b| a * b}.select{|num| num.to_s == num.to_s.reverse}.max
