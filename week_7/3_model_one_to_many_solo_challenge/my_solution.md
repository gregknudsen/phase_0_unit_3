# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Photo, Header, Name, Location, Website, Bio, Facebook

## Release 1: Tweet Fields
tweet, photo, location

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: user(implied), photo and location.
I say user because only the user will be able to tweet from this account. As for the other two, those are the only fields that match here. Obvisouly, these fields could be identical, OR they could be different every time.

## Release 3: Schema Design
<a href="http://minus.com/i/EumFWPNR4ZIh">Schema</a>

## Release 4: SQL Statements

SELECT tweet FROM tweets
  WHERE user_id="id"
  
SELECT tweet FROM tweets
  WHERE created_at=
  
# not entirely sure about this one...(above)  
  
SELECT tweet FROM tweets
  JOIN user
  WHERE handle="handle"
  
SELECT handle FROM users
  JOIN tweets
  WHERE tweet_id=0000

## Release 5: Reflection
I found myself updating my schema as I went. I'm not terribly confident about mine, but I think it's close. The one SQL statement that gave me fits is the 2nd one. As of now, I can't seem to figure out how to put into SQL "after Wednesday". 

This continues to be a tough week for me time wise. As of now, I'm kind of trucking through to get as much done as I can.
