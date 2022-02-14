require 'pry'

stock = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock)
  hash_result = Hash.new([])
  
  stock.each_with_index do |v, idx|
    i = idx + 1
    for i in i..stock.length - 1
      result = - v + stock[i]
      hash_result[result] = [idx, i]
    end
  end
  max = hash_result.keys.sort.last
  hash_result[max]
end

p stock_picker(stock)
p stock_picker([32,40,43,20,5,8,30,29,1])


