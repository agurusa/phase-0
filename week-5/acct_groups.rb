
def acct_groups(people, group_max, group_min)

  #define the group hash
  group_hash = Hash.new{|hash,person| hash[person] = "no group"} #if a new person is looked up in the group_hash, assign them a value of "no group"
  people.each do |person|
    group_hash[person] #enters everyone from the people_array into the new hash with an assigned "no group" value
  end

  #determine the number of groups
  if (people.length % group_max) < group_min #if there are less than 3 people left if you divide everyone into equal groups,
    x = (people.length/group_max) #those people should be put into existing groups
  else #otherwise,
    x = (people.length)/(group_max) + 1 #those people warrant adding a new group
  end
  range = (1..x)

  #assign each person a random group between 1 and the total number of groups
    group_hash.each do |person,group|
      group_hash[person] = rand(range)
    end
    x = group_hash.sort_by{|person,group| group}
    p x

    # ary = []
    # a = 0
    # until x[a][1] == nil
    #   if x[a][1] == x[a+1][1]
    #     p "same group"
    #     ary << x[a][0]
    #     a+= 1
    #   else
    #     p "different group"
    #     a+=1
    #   end
    #   p ary
    # end


    # range.each do |x|
    #   y = group_hash.select{|person,group| group == x}.keys
    #   puts y.join(", ") + " will be in Group #{x}"
    #   puts y.length.to_s + " Group number #{x}"
    # end
end


  # range.each do |x|
  #   people[rand(people.size)]
# loop do
# break if true
#       range.each do |x|
#         group_hash.count{|person,group| group == x} > group_min
#       end
# end

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
  "evan druce"
]

acct_groups(people_array, 5, 3)
