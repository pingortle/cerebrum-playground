require "cerebrum"

network = Cerebrum.new

network.train([
  {input: [0, 0], output: [0]},
  {input: [0, 1], output: [1]},
  {input: [1, 0], output: [1]},
  {input: [1, 1], output: [0]},
])

puts "XOR tests"
puts "0 ^ 0 == 0"
puts network.run([0, 0])
puts "0 ^ 1 == 1"
puts network.run([0, 1])
puts "1 ^ 0 == 1"
puts network.run([1, 0])
puts "1 ^ 1 == 0"
puts network.run([1, 1])
