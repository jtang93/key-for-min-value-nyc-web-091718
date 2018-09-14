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
  v.each do |num|
    if v[v.index(num)] < v[v.index(num+1]
      smallest = v.index(num)
    else
      smallest = v.index(num+1)
    end
  end
  k.index(smallest)
end