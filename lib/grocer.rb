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
  collapse = {}
  
  cart.each do |item|
   if collapse[item]
     collapse[item][:count] += 1
    else
      [:count] => 1
  end
end
collapse
end


  