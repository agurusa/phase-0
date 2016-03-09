def acct_groups(people, group_max, group_min)
  hash = {}

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
    p ary
    new_ary = ary.sort
    break if new_ary[0] > group_min && new_ary[-1] < (group_max + 2)
  end

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
    p "The people in group #{i} are #{group_string}"
  end

  puts "The entire class is made up of #{group_hash}"
end

people_array = [
  "Aarthi Gurusami",
  "Abid Ramay",
  "Adam Zmudzinski",
  "Alec Hendrickson",
  "Alex Wen",
  "Alicia Briceland",
  "Andrey Slonski",
  "Anna Lansfjord",
  "Ben Sanecki",
  "Benjamin R Flores",
  "Buck Melton",
  "caitlin Hoffman",
  "carlos Gonzalez",
  "Chand Nirankari",
  "Che Sanders",
  "Chris Henderson",
  "Christopher Lamkin",
  "christyn budzna",
  "dan park",
  "david ramirez",
  "ruo yu tao",
  "david walden",
  "bill deng",
  "denny jovic",
  "daniel deutsch",
  "dexter moran",
  "diana eromosele",
  "dominick lombardo",
  "elan kvitko",
  "elizabeth alexander",
  "elizabeth brown",
  "emmanuel",
  "evan bekanovic",
  "esther leytush",
  "evan druce",
  "frank lam",
  "gabriel zurita",
  "jack thatcher",
  "jason milfred",
  "john colella",
  "jonathan kaplan",
  "kelson adams",
  "kristal lam",
  "kunal patel",
  "leland meiners",
  "liam binell",
  "lisa buch",
  "lisa dannewitz",
  "lyudmila arinich",
  "charlotte manetta",
  "mohamed monekata",
  "parker smathers",
  "patrick dewitte",
  "renan martins",
  "riley scheid",
  "robin soubry",
  "james robinson",
  "samantha holmes",
  "scott southard",
  "shaun r sweet",
  "shin wang",
  "sibel ergener",
  "simon thomas",
  "talal talhouk",
  "ted bogin",
  "traci fong",
  "victoria solorzano"
]

acct_groups(people_array, 7, 3)
