lucky :: Int -> String
lucky 7 = "lucky number seven!"
lucky x = "out of lucky"

sayAmount n = case n of
    1 -> "one"
    2 -> "two"
    n -> "a bunch"