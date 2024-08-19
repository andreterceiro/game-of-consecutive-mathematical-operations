using Random

"""
Returns a number between 0 (inclusive) and 999 (inclusive)

@return Int
"""
function getRandomNumber(divisor)
    return abs(rand(Int) % divisor)
end

print("You will need to insert the result of the sum\n")
print("========\n\n")

print("In the first step, insert 1 to level easy, 2 to normal and 3 to hard: ")
userLevelSelection = 0
while userLevelSelection < 1 || userLevelSelection > 3
    global userLevelSelection = parse(Int, readline())
end

divisor = 1000
if userLevelSelection == 1
    divisor = 10
elseif userLevelSelection == 2
    divisor = 100
end

previousNumbers = [getRandomNumber(divisor), getRandomNumber(divisor), getRandomNumber(divisor)]
global rightAnswers = 0

while true
    newNumber = getRandomNumber(divisor)
    sum = 0

    for i in 1:length(previousNumbers)
        number = previousNumbers[i]
        print(number)
        sum += number
        if i < length(previousNumbers)
            print(" + ")
        else 
            print(" : ")
        end
    end    

    userSum = parse(Int64, readline())

    if userSum == sum
        global rightAnswers += 1
        push!(previousNumbers, getRandomNumber(divisor))
    else
        break
    end
end

print("You got " * string(rightAnswers) * " right answer(s)\n")