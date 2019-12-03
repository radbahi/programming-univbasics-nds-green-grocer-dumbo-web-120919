require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.length do 
   if collection[i][:item] == name 
     return collection[i]
   end
   i += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  grocerCart = []
  i = 0 
  while i < cart.length do 
    grocerItem = find_item_by_name_in_collection(cart[i][:item], grocerCart)
    if grocerItem
      grocerItem[:count] += 1 
    else 
      grocerItem = { 
      :item => cart[i][:item], 
      :price => cart[i][:price], 
      :clearance => cart[i][:clearance], 
      :count => 1
      }
      grocerCart << grocerItem
  end
  i += 1 
end
grocerCart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < coupons.length do 
    grocerItem = find_item_by_name_in_collection(coupons[i][:item], cart)
    couponItem = "#{coupons[i][:item]} W/COUPON"
    cartCoupon = find_item_by_name_in_collection(couponItem, cart)
    counter += 1
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
