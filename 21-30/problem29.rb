require 'set'

set = Set.new

range = (2..100)
range.each do |num|
  range.each do |num_e|
    set << (num ** num_e)
  end
end

p set.count
