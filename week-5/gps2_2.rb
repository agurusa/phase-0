=begin

Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps:
  1. Create a hash with each key with each list item
      -Use spaces in the string to determine what each list item is
      - Make an array with each list item %w
  2. set default quantity to 1
  3. print the list to the console call *print list method*
output: the list of groceries and their quantity. This is best shown as a hash.

Method to add (one) item to a list
input: item name (a string)
steps:
1. Check if item is on the list.
  -IF it is, *update quantity method*
  -ELSE add it to the list.
output: a message telling the user that their item was added to their list and total quantity

Method to remove (one) item from the list
input: an item (a string)
steps:
1. Check if item is on the list.
  -IF it is, reduce quantity by one
output: a message.
  -IF it was there, tell the user that their item was removed and the new total quantity
  -ELSE output a message telling the user that it was never there.

Method to update the quantity of an item
input: a string for the item and an integer for the quantity
steps:
1. access the quantity associated with that string in the grocery list.
2. change the quantity to the new integer value
output: a string saying what the new quantity is.

Method to print a list and make it look pretty
input: a list of items (strings) associated with their quantity (integers)
steps:
1. print out "you need to buy:"
2. print out each quantity (value) and item (string)
  -iterate over the list to print each pair out
output: a string of all the items you need, all on separate lines.
=end
$groc_hash = Hash.new{|hash,key| hash[key] = 1}

def create_list
  puts "What items do you want to buy?"
  list = gets.chomp
  array = list.split(' ')
  array.each do |item|
    $groc_hash[item]
  end
  print_list
  add_item
  remove_item
  update_quan
  print_list
end

def add_item
  puts "Do you want to add anything to your list? y/n?"
  input = gets.chomp
  if input == "y"
    puts "What would you like to add?"
    item = gets.chomp
    if $groc_hash.has_key?(item)
      $groc_hash[item] += 1
    else
      $groc_hash[item]
    end
    p "#{item} has been added and the quantity is #{$groc_hash[item]}"
  else
    puts "Ok. Nothing has been added."
  end
end

def remove_item
  puts "Do you want to remove anything to from list? y/n?"
  input = gets.chomp
  if input == "y"
    puts "What would you like to remove?"
    item = gets.chomp
    if $groc_hash.has_key?(item)
      $groc_hash[item] -= 1
      p "#{item} has been removed and the quantity is #{$groc_hash[item]}"
      $groc_hash.delete_if{|item,quan| quan == 0}
    else
      p "#{item} was not on your list."
    end
  else
    puts "Ok. Nothing has been removed."
  end
end

def update_quan
  puts "Do you want to update the quantity of anything on your list? y/n"
  input = gets.chomp
  if input == "y"
    puts "What item do you want to update?"
    item = gets.chomp
    puts "What new quantity do you want?"
    quan = gets.chomp
    $groc_hash[item] = quan
    p "#{item} now has a quantity of #{$groc_hash[item]}"
  else
    p "Ok. Nothing has been updated."
  end
end

def print_list
  puts "You need to buy:"
  $groc_hash.each do |item,value|
    puts value.to_s + " " + item
  end
end

create_list
