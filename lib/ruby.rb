# Create a simple calculator that first asks the user what method they would like to
# use (addition, subtraction, multiplication, division) and then asks the user for two numbers,
# returning the result of the method with the two numbers. Here is a sample prompt:

# def choose_method(method)
#   puts "choose method: #{method}"
#   if method == "add"
#     puts "add this"
#     puts "what is your first number?"
#     x = gets.to_i
#     puts "what is your second number?"
#     y = gets.to_i
#     add = x + y
#     puts "#{x} + #{y} = #{add}"
#   elsif method == "subt"
#     puts "subtract"
#     puts "what is your first number?"
#     x = gets.to_i
#     puts "what is your second number?"
#     y = gets.to_i
#     subt = x + y
#     puts "#{x} - #{y} = #{subt}"
#   elsif method == "mult"
#     puts "mutliply"
#     puts "what is your first number?"
#     x = gets.to_i
#     puts "what is your second number?"
#     y = gets.to_i
#     mult = x * y
#     puts "#{x} * #{y} = #{mult}"
#   elsif method == "div"
#     puts "divide this"
#     puts "what is your first number?"
#     x = gets.to_i
#     puts "what is your second number?"
#     y = gets.to_i
#     div = x / y
#     puts "#{x} / #{y} = #{div}"
#   end
# end
#
# def calc
#   puts "Which method would you like to use?"
#   method = gets.chomp
#   puts "calc 2: #{method}"
#   choose_method(method)
# end
#
# puts calc




##########################################################################################
# Reverse a string in place. In other words, do not create a new string or use other methods on the string such as reverse.
# The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values.

# def reverse(string)
#   puts "reverse method: #{string}"
#   # i = 0
#   # num = string.length
#   split = []
#   split = string.split('')
#   puts split
#   while split.length >= 1 do
#     final = split.pop
#     puts "final: #{final}"
#   end
#   puts "final: #{final}"
#
# end
#
# def get_string
#   puts "please type a word"
#   response = gets.downcase
#   string = response.chomp
#   puts "you chose #{string}. Thank you"
#   reverse(string)
# end
#
# puts get_string


##########################################################################################
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user.
# Here is a sample output:
#
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!


# balance = 1000
#
# def balance_change(answer)
#   balance = 1000
#   puts "desposit or withdraw: #{answer}"
#   if answer == "deposit"
#     puts "how much?"
#     x = gets.to_i
#     account = balance + x
#     puts "your balance is: #{account}"
#   else answer == "withdraw"
#     puts "how much?"
#     x = gets.to_i
#     account = balance - x
#     puts "your balance is: #{account}"
#   end
# end
#
# def calc
#   balance = 1000
#   see_bal = false
#   puts "would you like to display your balance?"
#   resp = gets.chomp
#   if resp == "yes"
#     see_bal = true
#     puts "your balance is: #{balance}"
#   else
#     puts "if you would like to desposit or withdraw, please type either. Otherwise get the fuck out!"
#     answer = gets.chomp
#     balance_change(answer)
#   end
# end
#
# puts calc


##########################################################################################
# Create a program that asks the user to guess a number between 1 and 100.
# Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct.
# The user should continue to make guesses until he guesses correctly.
# Also, once the user guesses correctly, the program should print the number of guesses needed to arrive at the correct answer.
# Below is sample output:
#
# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries


def first_guess
  number = 27
  puts "please guess a number between 1 and 100"
  ans = gets.to_i
  if ans == number
    puts "great guess, you got it. 27!"
  elsif ans < number
    puts "sorry #{ans} is less than the number"
    first_guess
  else ans > number
    puts "you guessed too high, ya jerk"
    first_guess
  end
end

puts first_guess
