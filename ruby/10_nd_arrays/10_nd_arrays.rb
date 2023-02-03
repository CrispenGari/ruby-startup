
array = [
  [2, 3, 4],
  [2, 3, 7],
  [11, 88, 99]
]



for list in array
  print("[")
  for ele in list
    print("#{ele}, ")
  end
  print("]\n")
end

# Sum of n-d array
sum = array.map{|list| list.reduce(0, :+)}.reduce(0, :+)
print(sum)

# This is the same as saying

print(array.flatten.reduce(0, :+))