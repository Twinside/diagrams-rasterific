{-# LANGUAGE NoMonomorphismRestriction #-}

import           Diagrams.Prelude
import           Diagrams.Backend.Rasterific

dia :: Diagram B V2 Float
dia = circle 35 # fc red
   <> regPoly 16 200 # fc blue
   <> regPoly 5 400 # fc orange # rotateBy (1/6)

sizeSpec = mkSizeSpec (Just 600) Nothing

main = renderRasterific "test0.png" sizeSpec 255 dia --(dia # translateX 0 # translateY (-300))
