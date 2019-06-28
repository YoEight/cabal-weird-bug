{-# LANGUAGE TemplateHaskell #-}
module Lib where

import Data.ByteString (ByteString)
import Data.FileEmbed (embedFile)

fooFile :: ByteString
fooFile = $(embedFile "etc/foo.txt")
