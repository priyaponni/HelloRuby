#raise
raise "Missing name" if name.nil?
if i >= names.size
raise IndexError, "#{i} >= size (#{names.size})"
end
raise ArgumentError, "Name too big", caller