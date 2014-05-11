class List
  def initialize
    @list = Hash.new
  end
  
  def add_item(item,quantity=1)
    @list[item] = quantity 
  end

  def remove_item(item)
    if @list.include?(item)
      @list.delete(item)
    else
      p "These aren't the droids your looking for..."
    end
  end  
    
  def display_items
    if @list.empty? 
      puts "Your list contains no items!"
    else
      @list.each { |key,value| puts "#{key}: #{value}" }
    end
  end

end


# DRIVER CODE GOES HERE. 

# shopping_list.display_items == "Your list contains no items!"

shopping_list = List.new
shopping_list.add_item("apple",5)
shopping_list.add_item("banana")
p shopping_list.display_items.include?("banana")
p shopping_list.display_items.include?("apple")
p shopping_list.add_item("orange",2)
shopping_list.display_items

p shopping_list.display_items.include?("orange")


p shopping_list.remove_item("apple")
p shopping_list.display_items.include?("orange")

p shopping_list.remove_item("steaks") == "These aren't the droids your looking for..."
 