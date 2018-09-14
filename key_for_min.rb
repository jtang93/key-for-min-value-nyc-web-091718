# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  k = name_hash.collect do |key, value|
    key
  end
  v = name_hash.collect do |key, value|
    value
  end
  
  smallest = 0
  i = 0
  while i < v.length-1
    if v[i] < v[i+1]
      smallest = v[i]
      i += 1
    else
      smallest = v[i+1]
      i += 1
    end
  end
  k.index(smallest)
  smallest
end