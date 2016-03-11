# pseudocode:

# input: a list of names, a max number of people per group, a min number of people per group.
# output: "the groups are:" then, list group numbers and the names in the group.

# The MVP I want for this challenge will be a group hash that documents the name of each person and their group number. These group numbers have to be assigned randomly, and have to change every time the program is run. There can be no less than 3 people per group, and the groups should be relatively evenly distributed.
# I would like to implement a few extra things to this challenge. It would be nice if I could have the user input names into the code, instead of something like a predefined array. I would also like to tell the user how many people are in the class in total, so they can determine how many people they want per group. This would make it so the class size could change. I want to be able to store the group hash everytime the program is run, so there would be a record of who was in what group. It would also be nice if the program spit out readable values, instead of putting all the information on one line, or just spitting out the hash for the user to interpret.

# 1. Ask the user for the group names.
# 2. Turn those names into an array.
# 3. Determine the size of the groups:
#   a. Count how many people are in the class.
#   b. Divide that number by the group max.
#   c. IF the left over amount of people are less than the group min, put those people in groups that already exist.
#     ELSE, add 1 to the total number of groups.
# 4. Assign everyone a random group number.
#   This group number should be somewhere between 1 and the total number of groups.
# 5. Count how many people are in each group.
#     IF there are less than the group min or more than the group max in each group, reassign numbers.
#     ELSE everyone keeps the numbers they were assigned.
# 6. Create an organized group hash to keep track of everyone in the class and what group they're in.
# 7. Create separate arrays for each group number with the names of people in each group as the values in the array.
# 8. Print out the group number followed by the group names.

def acct_groups

  hash = {}
  puts "Who is in the class? Separate each person with a comma, but do not hit enter between people (eg. Aarthi Gurusami, Abid Ramay, Adam Zmudzinski)"
  everyone = gets.chomp
  people = everyone.split(', ')
  puts "There are a total of #{people.length} people in the class. About how many people do you want in each group?"
  group_max = gets.chomp.to_i
  puts "What is the minimum amount of people you want in each group?"
  group_min = gets.chomp.to_i

  if (people.length % group_max) < group_min
    x = (people.length/group_max)
  else
    x = ((people.length)/(group_max))+ 1
  end

  loop do
    people.each do |y|
      hash[y] = rand(1..x)
    end
    ary = []
    (1..x).each do |i|
      ary << hash.values.count(i)
    end
    $new_ary = ary.sort
    break if $new_ary[0] > group_min && $new_ary[-1] < (group_max + 2)
  end
  puts "There are #{$new_ary.length} groups and no more than #{$new_ary[-1]} people per group, and no less than #{$new_ary[0]} people per group."

  group_hash = {}

  (1..x).each do |i|
    group_ary = []
    hash.each do |k,v|
      if v == i
        group_ary << k
      end
    end
    group_hash[i] = group_ary
    group_string = group_ary.join(', ')
    p "Group #{i} : #{group_string}"
  end
end

acct_groups

#Reflection:
# What was the most interesting and most difficult part of this challenge?

# The most interesting problem was, to me, the most difficult. I couldn't figure out the best way to count how many people were in each group, and how to make sure that there weren't too many or too few people in each. I thought about creating arrays for each group, and removing that number from the range of numbers that rand chose from. But that ended up being too complicated. I also thought about "pulling" random people from the input array instead of just assigning them numbers, but I couldn't figure out the most effective way to do that. The code ended up being really complicated, and I would have to use a destructive method on the original class array. I ended up going with a loop, and just looping through my random assignment method until there was a relatively even distribution through the class. I figured this would take a really long time (which, sometimes it does... if the user inputs a really specific group max and min), but it usually runs through the program pretty quickly. It would be nice to figure out a different way to do this.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#   I do. I actually wrote this out in a notebook before even getting to the computer, because it forced me to think about the needs of the program without looking up specific methods.

# Was your approach for automating this task a good solution? What could have made it even better?
#   I'm proud of it, but I definitely think there could be a better way. I don't like how long it takes for the program to run, and it's because it's looping until number is evenly distributed through the hash. It would be better if the program just iterated through each person and assigned them a group number that was "running low" on people.

# What data structure did you decide to store the accountability groups in and why?
#   I actually stored them in a hash and an array. I put them in a hash for collection purposes, and put them in an array for counting and readability purposes. A hash made sense for an overall storing solution, because each person had to be assigned a number. The person's name was the key, and their group number was the value. I then used an array because it gave me the ability to quickly count how many people were in each group, then spit out the answers in a readable way.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

#   I learned that my original code was incredibly difficult to read, becaues the variable names were really long. I tried to shorten those down to make it easier. I also learned that i could count values in a hash, and not just count the length of an array. I played a lot with ranges, and realized that you can iterate over a range just like you can with an array or hash... but only if the values in the range are integers.



# people in the class = [
#   "Aarthi Gurusami",
#   "Abid Ramay",
#   "Adam Zmudzinski",
#   "Alec Hendrickson",
#   "Alex Wen",
#   "Alicia Briceland",
#   "Andrey Slonski",
#   "Anna Lansfjord",
#   "Ben Sanecki",
#   "Benjamin R Flores",
#   "Buck Melton",
#   "caitlin Hoffman",
#   "carlos Gonzalez",
#   "Chand Nirankari",
#   "Che Sanders",
#   "Chris Henderson",
#   "Christopher Lamkin",
#   "christyn budzna",
#   "dan park",
#   "david ramirez",
#   "ruo yu tao",
#   "david walden",
#   "bill deng",
#   "denny jovic",
#   "daniel deutsch",
#   "dexter moran",
#   "diana eromosele",
#   "dominick lombardo",
#   "elan kvitko",
#   "elizabeth alexander",
#   "elizabeth brown",
#   "emmanuel",
#   "evan bekanovic",
#   "esther leytush",
#   "evan druce",
#   "frank lam",
#   "gabriel zurita",
#   "jack thatcher",
#   "jason milfred",
#   "john colella",
#   "jonathan kaplan",
#   "kelson adams",
#   "kristal lam",
#   "kunal patel",
#   "leland meiners",
#   "liam binell",
#   "lisa buch",
#   "lisa dannewitz",
#   "lyudmila arinich",
#   "charlotte manetta",
#   "mohamed monekata",
#   "parker smathers",
#   "patrick dewitte",
#   "renan martins",
#   "riley scheid",
#   "robin soubry",
#   "james robinson",
#   "samantha holmes",
#   "scott southard",
#   "shaun r sweet",
#   "shin wang",
#   "sibel ergener",
#   "simon thomas",
#   "talal talhouk",
#   "ted bogin",
#   "traci fong",
#   "victoria solorzano"
# ]

# Aarthi Gurusami, Abid ramay, adam zmudzinski, alec hendrickson, alex wen, alicia briceland, andrey slonski, anna lansfjord, ben sanecki, benjamin r flores, buck melton, caitlin hoffman, carlos gonzales, chand nirankari, che sanders, chris hnderson, christopher lamkin, christyn budzna, dan park, david ramirez, ruo yo tao, david walden, bill deng, denny jovic, daniel deutsch, dexter moran, diana eromosele, ddominick lombardo, elan kvitko, elizabeth alexander, elizabeth brown, emmanuel, evan bekanovic, esther leytush, evan druce, evan druce, gabriel zurita, jack thatcher, jason milfred, john colella, jonathan kaplan






