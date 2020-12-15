omikuji :: Int -> String
omikuji 7 = "hit"
omikuji _ = "lose"

instance Show Coin where 
  show Front = "win" 
  show Back = "lose"

sayAmount n = case n of
    1 -> "one"
    2 -> "two"
    n -> "a bunch"

myHead (x:xs) = x
myHead [] = error "No head for empty list"