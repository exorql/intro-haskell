myGCD a b = if result == 0
    then b
    else myGCD b result
    where result = a `mod` b
