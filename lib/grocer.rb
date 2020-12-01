require 'pry'

def find_item_by_name_in_collection(name, collection)

  collection.each do |item|
    if item.has_value?(name)
      return item
    end
  end
  return NIL
end

def consolidate_cart(cart)
  output = {}
  cart.each do |item|
    item_name = item.keys[0]
    if output[item_name]
      output[item_name][:count] += 1
      binding.pry
    else
      output[item_name] = item[item_name]
      output[item_name][:count] = 1 
    end
  end
  output
end

  