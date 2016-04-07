# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") #turns the coded message into all lowercase, then an array with each letter being a different element.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| #each x is each letter
#     found_match = false  # Why would this be assigned to false from the outset? This is true after the method is able to match x to a coded character.While it's false, it puts x into the decoded sentence.
#     cipher.each_key do |y| # each y is each key
#       if x == y  #If the letter in the input is the same as the letter in the cipher:
#         decoded_sentence << cipher[y] #Put the value associated with that letter in the cipher in  decoded_sentence.
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #If x is equal to a special character
#         decoded_sentence << " " #Put a space in the decoded_sentence
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) #Create an array from 0 to 9 (inclusive). If it includes x (so if there is a number in the input message):
#         decoded_sentence << x #Put that in decoded_sentence. There's no code for numbers...
#         found_match = true
#         break
#       end
#     end
#     if not found_match  #If found_match is false
#       decoded_sentence << x #Just put the x (uncoded) into the decoded_sentence
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #This returns a sentence with all of the characters back together.
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  input.each do |character|
    number = character.ord
    if number > "d".ord && number <= "z".ord
      decoded_character = (number - 4).chr
      decoded_sentence << decoded_character
    elsif number >= "a".ord && number <= "d".ord
      decoded_character = (number + (26-4)).chr
      decoded_sentence << decoded_character
    elsif /[@#\$%\^&*]/.match(character)
      decoded_sentence << " "
    else
      decoded_sentence << character
    end
  end
  p decoded_sentence.join("")
end



# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("")
#   decoded_sentence = []
#   cipher = {"e" => "a",
#             "f" => "b",
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x|
#     found_match = false
#     cipher.each_key do |y|
#         decoded_sentence << cipher[y]
#         found_match = true
#         break
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x)
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
# end





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# # Reflection
# What concepts did you review in this challenge?
# I reviewed a lot about regexes and the .split and .join methods.
# What is still confusing to you about Ruby?
# I'm a little confused about how I would have changed this into a better algorithm. I was hoping to find an easy way to deal with the character difference.
# What are you going to study to get more prepared for Phase 1?
# I want to study a bit more about regexes. I think this would have made it a lot easier to replace certain parts of the code.
# # Keep your reflection limited to 10-15 minutes!