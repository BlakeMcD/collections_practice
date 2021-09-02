def sort_array_asc(array)  #takes an array of integers, returns a copy with the integers ascending
    array.sort
end

def sort_array_desc(array)  #takes an array of integers, returns a copy with the integers descending
    array.sort.reverse
end

def sort_array_char_count(array) #takes an array of strings, returns those strings according to their length.
    array.sort_by { |index_value| index_value.length }
    
end

def swap_elements(array)  #takes in array, and swaps 2nd and 3rd elements
    array_copy = array.clone
    second_element = array[1]
    third_element = array[2]
    #delete second and third element from copy
    array_copy.delete_at(2)
    array_copy.delete_at(1)
    # add the swapped versions into copy
    array_copy.insert(1, third_element)
    array_copy.insert(2, second_element)
    return array_copy
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    new_array = []
    array.each do |name|
        name_broken_down = name.split("")
        name_broken_down[2] = "$"
        new_array << name_broken_down.join("")
    end
    return new_array
end

def find_a(array)
    new_array = []
    array.each do |value|
        name_broken_down = value.split("")
        if name_broken_down[0] == "a"
            new_array << value
        end
    end
    return new_array
end

def sum_array(array)
    array.inject(0) {|sum, number| sum + number}
end

def add_s(array)
    array.map.with_index do |item, index|
        if index != 1 
            item << "s"
        else
            item
        end
    end
end