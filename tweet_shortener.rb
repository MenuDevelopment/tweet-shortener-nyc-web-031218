# Write your code here.

def word_substituter(tweet)
  tweetionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "and" => "&",
    "at" => "@"
  }

  new_tweet = []
  tweet.split(" ").each do |word|
    if tweetionary.include?(word.downcase)
      new_tweet << tweetionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end




def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    tweet = word_substituter(tweet)
    puts tweet
  end


end




def selective_tweet_shortener (tweet)
  if tweet.size > 140
    tweet = word_substituter(tweet)
  else
    tweet
  end

end



def shortened_tweet_truncator (long_tweet)
  if long_tweet.size > 140
    long_tweet = long_tweet[0..139]
    long_tweet[-3..-1] = "..."
  end
  long_tweet


end
