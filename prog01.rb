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

# draw graph

for x in 0..79 do

  a= x/80.0
  y1=24-f(a)*25
  if y1 >= 0 then
    frame[y1][x] = '*'
  end
end

# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end
