# do not use .each or .map

# pseudo code encrypt
# set password.  Loop through length of password.  Add letter to each index.
# input: assume lowercase
# output: assume lowercase
# spaces don't change

puts "Do you want encrypted or decrypted?"
  choice = gets.chomp
puts "What would you like to use for a password?"
  password = gets.chomp  

if choice == "encrypted"
    puts encrypt(password)
else
    puts decrypt(password)
end


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

# puts encrypt("quazi modo")

# pseudo code decrypt
# loop through password using [-1]
# .length - 1
# spaces remain the same

def decrypt(string_1)
  counter = 0
  while counter < string_1.length
    if string_1[counter].index("z")
      puts "y"
      counter += 1
    elsif string_1[counter].index("y")
      puts "x"
      counter += 1
    elsif string_1[counter].index("x")
      puts "w"
      counter += 1
    elsif string_1[counter].index("w")
      puts "v"
      counter += 1
    elsif string_1[counter].index("v")
      puts "u"
      counter += 1
    elsif string_1[counter].index("u")
      puts "t"
      counter += 1
    elsif string_1[counter].index("t")
      puts "s"
      counter += 1
    elsif string_1[counter].index("s")
      puts "r"
      counter += 1
    elsif string_1[counter].index("r")
      puts "q"
      counter += 1
    elsif string_1[counter].index("q")
      puts "p"
      counter += 1
    elsif string_1[counter].index("p")
      puts "o"
      counter += 1
    elsif string_1[counter].index("o")
      puts "n"
      counter += 1
    elsif string_1[counter].index("n")
      puts "m"
      counter += 1
    elsif string_1[counter].index("m")
      puts "l"
      counter += 1
    elsif string_1[counter].index("l")
      puts "k"
      counter += 1
    elsif string_1[counter].index("k")
      puts "j"
      counter += 1
    elsif string_1[counter].index("j")
      puts "i"
      counter += 1
    elsif string_1[counter].index("i")
      puts "h"
      counter += 1
    elsif string_1[counter].index("h")
      puts "g"
      counter += 1
    elsif string_1[counter].index("g")
      puts "f"
      counter += 1
    elsif string_1[counter].index("f")
      puts "e"
      counter += 1
    elsif string_1[counter].index("e")
      puts "d"
      counter += 1
    elsif string_1[counter].index("d")
      puts "c"
      counter += 1
    elsif string_1[counter].index("c")
      puts "b"
      counter += 1
    elsif string_1[counter].index("b")
      puts "a"
      counter += 1
    else string_1[counter].index(" ")
      puts " "
      counter += 1
    end
  end
end

# puts decrypt("txpse gjti")

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))