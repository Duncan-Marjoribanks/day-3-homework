# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
# # Add "Edinburgh Waverley" to the end of the array
# stops.push("Edinburgh Waverley")
# p stops
# # Add "Glasgow Queen St" to the start of the array
# stops.unshift("Glasgow Queen St")
# p stops
# # Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
# stops.insert(4, "Polmont")
# p stops
# # Work out the index position of "Linlithgow"
# p stops.index("Linlithgow")
# # Remove "Livingston" from the array using its name
# stops.delete("Livingston")
# p stops
# # Delete "Cumbernauld" from the array by index
# stops.delete_at(2)
# p stops
# # How many stops there are in the array?
# p stops.length
# # How many ways can we return "Falkirk High" from the array?
# p stops[2]
# p stops[-5]
# # Reverse the positions of the stops in the array
# p stops.reverse
# # Print out all the stops using a for loop
# for stop in stops
#   p stop
# end


users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]
# Get Erik's hometown
p users["Erik"][:home_town]
# Get the array of Erik's lottery numbers
p users["Avril"][:lottery_numbers]
# Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]
# Get the smallest of Erik's lottery numbers
p users["Erik"][:lottery_numbers].sort.first
# Return an array of Avril[]'s lottery numbers that are even
for number in users["Avril"][:lottery_numbers]
  if number % 2 != 1
    p number
  end
end
# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
p users["Erik"][:lottery_numbers].push(7)
# Change Erik's hometown to Edinburgh
p users["Erik"][:home_town] = "Edinburgh"
# Add a pet dog to Erik called "Fluffy"
p users["Erik"][:pets].push({name:"Fluffy", species:"dog"})
# Add another person to the users hash
users["Duncan"] = {}
p users
