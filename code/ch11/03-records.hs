module Records where

data Person =
  Person { name :: String
         , age :: Int }


-- Exercises

data OperatingSystem =
    GnuPlusLinux
  | OpenBSDPlusNevermindJustBSDStill
  | Mac
  | Windows
  deriving (Eq, Show)

data ProgLang =
    Haskell
  | Agda
  | Idris
  | PureScript
  deriving (Eq, Show)

data Programmer =
  Programmer { os :: OperatingSystem
             , lang :: ProgLang }
             deriving (Eq, Show)

allOperatingSystems :: [OperatingSystem]
allOperatingSystems =
  [ GnuPlusLinux
  , OpenBSDPlusNevermindJustBSDStill
  , Mac
  , Windows
  ]

allLanguages :: [ProgLang]
allLanguages =
  [ Haskell
  , Agda
  , Idris
  , PureScript
  ]

-- combine :: [OperatingSystem] -> [ProgLang] -> [Programmer]
-- combine oses languages = foldr (++) [] programmersForOses
--   where programmersForOses = map (programmersForOs languages) oses
--         programmersForOs [] _ = [] 
--         programmersForOs (l:ls) os = (Programmer os l) : programmersForOs ls os

-- allProgrammers :: [Programmer]
-- allProgrammers = combine allOperatingSystems allLanguages

allProgrammers :: [Programmer]
allProgrammers = combine allOperatingSystems allLanguages
  where
    combine [] _ = []
    combine (o:os) ls =
      map (Programmer o) ls ++ combine os ls
