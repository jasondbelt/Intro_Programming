h = {a:1, b:2, c:3, d:4}

p h[:b] #get the value of ':b'
h[:e] = 5 #add to this hash the key:value pair '{e:5}'
p h.delete_if { |k, v| v < 3.5 } #remove key:value pairs whose value is < 3.5 