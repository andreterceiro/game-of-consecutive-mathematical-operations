using Random

"""
Returns a number between 0 (inclusive) and the limit can be 10, 100 or 1000, 
depending the user selection of the level

@return Int
"""
function getRandomNumber(divisor)
    return abs(rand(Int) % divisor)
end

print("You will need to insert the result of the operations\n")
print("========\n\n")

print("In the first step, insert 1 to level easy, 2 to normal and 3 to hard: ")
userLevelSelection = 0

try
    while userLevelSelection < 1 || userLevelSelection > 3
        global userLevelSelection = parse(Int, readline())
    end
catch
    print("\nNão consegui coneverter o valor que você digitou para um número. Vou abortar o script.\n\n")
    exit()
end

divisor = 1000
if userLevelSelection == 1
    divisor = 10
elseif userLevelSelection == 2
    divisor = 100
end

previousNumbers = [getRandomNumber(divisor), getRandomNumber(divisor), getRandomNumber(divisor)]
rightAnswers = 0
userResult = 0
result = 0

while true
    newNumber = getRandomNumber(divisor)
    results = ""

    for i in 1:length(previousNumbers)
        number = previousNumbers[i]
        
        print(number)

        global result += number

        if i < length(previousNumbers)
            print(" + ")
        else 
            print(" : ")
        end
    end    

    error = false
    try
        global userResult = parse(Float64, readline())
    catch
        error = true
    end

    if userResult == result && error == false
        global rightAnswers += 1
        global result = 0
        push!(previousNumbers, getRandomNumber(divisor))
    else
        break
    end
end

print("You got " * string(rightAnswers) * " right answer(s)\n")
print("Right result: " * string(result) * "\n")