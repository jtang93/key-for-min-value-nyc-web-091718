# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
    k = name_hash.collect do |key, value|
      key
    end
    v = name_hash.collect do |key, value|
      value
    end
    
    smallest = v[0]
    i = 0
    while i < v.length
      if v[i] < smallest
        smallest = v[i]
        i += 1
      else
        i += 1
      end
    end
    k[v.index(smallest)]
  end
end