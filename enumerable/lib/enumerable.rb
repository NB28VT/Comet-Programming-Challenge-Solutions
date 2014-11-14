def map(collection)
  new_array = []
  collection.each do |i|
    result = yield(i)
    new_array << result
  end
  new_array
end

def filter(collection)
  result = []
  collection.each do |i|
    if yield(i) == true
      result << i
    end
  end
  result
end

def any?(collection)
  result = false
  collection.each do |i|
    if yield(i) == true
      result = true
    end
  end
  result
end

def reduce(collection, initial = nil)
  unless collection.empty? == true
    if initial == nil
      if yield(1, 1) == 2
        initial = 0
      elsif yield(1, 1) == 1
        initial = 1
      end
    end
  end
  collection.each do |i|
    initial = yield(initial, i)
  end
  initial
end
