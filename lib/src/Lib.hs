{-# LANGUAGE TemplateHaskell #-}
module Lib where

import Data.Yaml (Value)
import Data.Yaml.TH (decodeFile)


val :: Value
val = $$(decodeFile "config/value.yaml")

someFunc :: IO ()
someFunc = print val
