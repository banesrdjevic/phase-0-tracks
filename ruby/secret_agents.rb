# do not use .each or .map

# pseudo code encrypt
# set password.  Loop through length of password.  Add letter to each index.
# input: assume lowercase
# output: assume lowercase
# spaces don't change

password = "quazi modo"

def encrypt(string_1)
  counter = 0
  while counter < string_1.length
      if string_1[counter].index(" ")
        puts " "
        counter += 1
    else
      puts string_1[counter].next
        counter += 1
    end
  end
end

puts encrypt(password)


# pseudo code decrypt
# loop through password using [-1]
# .length - 1
# spaces remain the same


# initialize the counter OUTSIDE the loop
counter = 0

while counter < 10
  # print the counter
  puts counter
  
  # avoid an infinite loop
  counter += 1
end

index = 0
secret_password = "unicorn"

greeting = "hello"

# use the index to print
# each letter
p greeting[0]
p greeting[1]
p greeting[2]
p greeting[3]
p greeting[4]

# or reverse it
p greeting[-1]
p greeting[-2]
p greeting[-3]
p greeting[-4]
p greeting[-5]


# strings are zero-indexed,
# so .length on a string will always
# return 1 more than the largest index.
# If length is 7, the index of the 
# last letter is 6.

puts "Length of password is #{secret_password.length} letters."

puts "The letter at index 6 is #{secret_password[6]}."

# let's use .length to loop 
# through the word
# and simply print each letter ...
while index < secret_password.length
  p secret_password[index]
  index += 1
end

# or loop through and do something
# interesting with each letter
index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].upcase!
  index += 1
end

puts secret_password