def factorial(num)
    return 1 if num==0
    num * factorial(num-1)
end

factorial(5) #120
factorial(3) # 6