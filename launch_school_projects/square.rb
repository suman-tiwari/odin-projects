def square(num)
    num * num
end

num = gets.chomp.to_f
square(num) #outputs square of the number

#generalize method to calculate square, cube and more powers
def power_of(num, power)
    num**power
end

power_of(5, 2) #25
# or you can directly do num**power to calculate power of a number