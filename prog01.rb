# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

# draw func
###
### 分担3
###
frame[0][20] = 'y'
frame[0][21] = '='
for i in 0..$func.size do
frame[0][i+22] = $func[i]
end
# draw graph










# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end
