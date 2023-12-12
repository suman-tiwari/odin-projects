def factorial(num)
    return 1 if num==0
    num * factorial(num-1)
end

factorial(5) #120
factorial(3) # 6

[5,6,7,8].each do |num|
    factorial(num)
end