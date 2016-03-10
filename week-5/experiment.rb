def acct_groups
  hash = {}
  puts "Who is in the class? Separate each person with a comma, but do not hit enter between people (eg. Aarthi Gurusami, Abid Ramay, Adam Zmudzinski)"
  everyone = gets.chomp
  people = everyone.split(', ')
  puts "About how many people do you want in each group?"
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

# people_array = [
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


acct_groups
