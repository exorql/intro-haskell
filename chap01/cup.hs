-- コンストラクタ
cup f10z = \message -> message f10z
-- cupオブジェクトを受け取り、そのオブジェクトに格納されているコーヒーの量（flOz）を返す
getOz aCup = aCup (\flOz -> flOz)

-- 空かどうか
isEmpty aCup = getOz aCup == 0

coffeeCup = cup 12
afterManySips = foldl drink coffeeCup [1,1,1,1,1]

drink aCup ozDrank = if ozDiff >= 0
    then cup ozDiff
    else cup 0
    where 
        f10z = getOz aCup
        ozDiff = f10z - ozDrank

robot (name, attack, hp) = \message -> message (name, attack, hp)
killerRobot = robot ("Kill3r",25,200)

name (n,_,_) = n
attack (_,a,_) = a
hp (_,_,hp) = hp

-- getter
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

-- setter
setName aRobot newName = aRobot (\(n,a,h) -> robot (newName,a,h))
setAttack aRobot newAttack = aRobot (\(n,a,h) -> robot (n,newAttack,h))
setHP aRobot newHP = aRobot (\(n,a,h) -> robot (n,a,newHP))

damage aRobot attackDamage = aRobot (\(n,a,h) -> robot (n,a,h-attackDamage))

fight aRobot defender = damage defender attack where attack = if getHP aRobot > 10 then getAttack aRobotelse 0

gentleGiant = robot ("Mr. Friendly",10,300)

printRobot aRobot = aRobot (\(n,a,h) -> n ++ " attack:" ++ (show a) ++ " hp:" ++ (show h))