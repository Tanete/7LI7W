stdio := File standardInput
secret := (Random value * 100) floor
guess := nil
count := 10

while(count > 0 and guess != secret,
  ("".. (count asNumber) .." times left. Guess again!") println
  guess := stdio readLine asNumber
  if(guess < secret, "LT" println)
  if(guess > secret, "MT" println)
  count = count -1
)

if (guess == secret,
  ("You found it: " .. secret asString) println,
  ("You failed to find it: " .. secret asString) println
)
