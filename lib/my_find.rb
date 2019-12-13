require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
        return collection[i] if (yield (collection[i]))
        i +=1
    end
  end

  my_find([1,2,3,4,5]) {
      |i|
      i==3
    }