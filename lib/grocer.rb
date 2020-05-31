def find_item_by_name_in_collection(name, collection)
  collection.each do |n| 
      if n[:item] == name
          return n
      end
   end
   return nil
end

def consolidate_cart(cart)
    results_arr = []
    
    cart.each do |n|
      if find_item_by_name_in_collection(n[:item], results_arr)
          i=0
          while i < results_arr.length 
            if results_arr[i][:item] == n[:item]
              break
            end
              i +=1 
          end
        results_arr[i][:count] += 1
      else 
        results_arr << {item: n[:item],price: n[:price],clearance: n[:clearance],:count => 1} 
      end
    end
     results_arr
 end

   

     
    
  
 
 
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.



  