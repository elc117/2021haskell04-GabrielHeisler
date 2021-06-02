-- Prática 04 de Haskell
-- Nome: Gabriel Vinícius Heisler

faixaIdoso :: Int -> String
faixaIdoso idade
  | idade >=80 = "IDO80"
  | idade<=79 && idade>=75 = "IDO79"
  | idade<=74 && idade>=70 = "IDO74"
  | idade<=69 && idade>=65 = "IDO69"
  | idade<=64 && idade>=60 = "IDO64"
  | otherwise = "ND"

classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos tpl = [(name, age, faixaIdoso age)| (name, age) <- tpl]

classifIdosos' :: [(String,Int)] -> [(String,Int,String)]
classifIdosos' tpl = map (\(name, age)->(name, age, faixaIdoso age)) tpl

--strColor :: (Int,Int,Int) -> String
--strColor rgb = "rgb" ++ 

--genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
--genCircs