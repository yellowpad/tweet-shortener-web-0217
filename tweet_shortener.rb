def word_substituter(string)
  dictionary = {
     hello:
     "hi",
     to:"2",
     two:"2",
     too:"2",
     for:"4",
     four:"4",
     become:"4",
     be:"b",
     you:"u",
     at:"@",
     and:"&"
   }
  arr =[]
  words = string.split
  words.each do |word|
  if   dictionary.has_key?(word.downcase.to_sym)
    arr << dictionary[word.downcase.to_sym]
  else
    arr << word
  end

  end

arr.join(' ')

end

def bulk_tweet_shortener(array)

  arr =[]
  array.each do |string|
    arr << word_substituter(string)
  end
 arr.each do |str|
   puts "#{str}"
 end
end

def selective_tweet_shortener(string)
  count = 0

    count += string.length

   if count >140
    return   word_substituter(string)

  end
  string
end
def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string).length >140
    selective_tweet_shortener(string)[0..139]
  else
    selective_tweet_shortener(string)
  end
end
