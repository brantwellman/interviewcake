def find_unique_int(arr)
  id_counts = Hash.new(0)
  arr.each do |id|
    id_counts[id] += 1
  end
  id_counts.key(1)
end
