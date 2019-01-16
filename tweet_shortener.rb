def dictionary
  convert = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweets)
  tweet = tweets.split(" ")
  tweet.each_with_index do |words, index|
    dictionary.keys.each do |a|
      if a == words 
        tweet[index] = dictionary[a]
      end
    end
  end
  tweet.join(" ")    
end

def bulk_tweet_shortener(array_tweet)
  array_tweet.each do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweets) 
  if tweets.length > 140
    return word_substituter(tweets)
  else
    return tweets
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..139]+"..."
  else 
    return tweet
  end
end

   
  