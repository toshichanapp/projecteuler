require 'date'
start_on = Date.parse('1901-01-01')
end_on = Date.parse('2000-12-31')
p (start_on..end_on).count{|date| date.day == 1 && date.cwday == 7}
