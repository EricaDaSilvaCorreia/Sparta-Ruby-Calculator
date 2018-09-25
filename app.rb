print "welcome to the ruby calculator"
print "Which caluculator would you like to use? [a]dvanced, [b]asic or [c]BMI calculator ?"

calculator = gets.chomp
# ======advanced calc ======
if calculator == 'a'
  print "please select an action : [p]ower or [r]square root"
  action = gets.chomp
  if action =='p'
    print " please insert your first number"
    num1 = gets.chomp.to_f
    print " please insert your second number"
    num2 = gets.chomp.to_f
    total = num1 ** num2
    print "your total #{num1} ^ #{num2} = #{total}"
  elsif action == 'r'
    print " please insert your first number"
    num1 = gets.chomp.to_f
    total = Math.sqrt(num1)
    print "your total √ #{num1} = #{total}"

  end
  # =====basic calc ========
elsif calculator == 'b'
  print " please insert your first number"
  num1 = gets.chomp.to_f
  print " please insert your second number"
  num2 = gets.chomp.to_f
  print "please select an action : [m]ultiply, [d]ivide, [s]ubtract or [a]dd"
  action = gets.chomp

  if action == 'm'
    total = num1 * num2
    print "your total #{num1} * #{num2} = #{total}"
  elsif action == 'd'
    total = num1 / num2
    print "your total #{num1} / #{num2} = #{total}"
  elsif action == 's'
    total = num1 - num2
    print "your total #{num1} - #{num2} = #{total}"
  elsif action == 'a'
    total = num1 + num2
    print "your total #{num1} + #{num2} = #{total}"
  end
# ===== BMI Calc ==========
elsif calculator == 'c'
  print "please select which system you'd like to use [i]mperial or [me]tric"
  sys = gets.chomp
  if sys == 'i'
    print "please insert the weight in lbs"
    weight = gets.chomp.to_f
    print "please insert the height in inches"
    height = gets.chomp.to_f

    total = ((weight / (height * height)) * 705)
    print "your total (#{weight} / (#{height} * #{height})) * 705 = #{total}"
  elsif sys = 'me'
    print "please insert the weight in kg"
    weight = gets.chomp.to_f
    print "please insert the height in meters"
    height = gets.chomp.to_f

    total = weight / (height * height)
    print "your total (#{weight} / (#{height} * #{height})) = #{total}"
  end

end
