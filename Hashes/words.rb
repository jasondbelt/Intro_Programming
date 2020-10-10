words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word| #iterates over array
  key = word.split('').sort.join #sort each word into alpabetical order
    if result.has_key?(key) #if key exists, append current word into value (array)
      result[key].push(word)
    else #otherwise, create a new key with this sorted word
      result[key] = [word]
    end
  end

  result.each_value do |v|
    p v
  end