class Search
  def self.linear(names, searched_name)
    names.each do |name|
      return true if name == searched_name
    end
    false
  end

  def self.binary(names, searched_name)
    low_index = 0
    high_index = names.length - 1

    until low_index == high_index
      names_length = high_index - low_index
      middle_index = names_length / 2 + low_index

      if searched_name == names[middle_index]
        return true
      elsif names[middle_index] < searched_name
        #only take right half
        low_index = middle_index + 1
      else
        #take left half
        high_index = middle_index - 1
      end
    end

    searched_name == name[low_index]
  end

  def self.binary_recursive(names, searched_name)
    if names.count == 1
      names.first == searched_name
    else
      middle_index = names.count / 2

      if searched_name == names[middle_index]
        return true
      elsif names[middle_index] < searched_name
        #only take right half
        middle_index += 1
        self.binary_recursive(names[middle_index..-1], searched_name)
      else
        #only take left half
        middle_index -= 1
        self.binary_recursive(names[0..middle_index], searched_name)
      end
    end
  end
end
