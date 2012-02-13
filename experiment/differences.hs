
import Nums (nums)

import Text.Printf
import Numeric.SpecFunctions (logGamma, logGammaL, logGammaFN)

main = do 
    putStrLn "x,lgd,lgld,lgfnd"
    mapM_ (\x -> putStrLn (line x)) nums
    where
        line (x,lgx) = printf "%.20g,%.20g,%.20g,%.20g" x (lgd x lgx) (lgld x lgx) (lgfnd x lgx)
        lgd x lgx   = abs ((lgx - logGamma x)   / lgx)
        lgld x lgx  = abs ((lgx - logGammaL x)  / lgx)
        lgfnd x lgx = abs ((lgx - logGammaFN x) / lgx)
