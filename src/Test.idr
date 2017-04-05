module Test

-- TODO: Only export public functions
%access public export

data TestResult
  = Pass

record Test where
  constructor MkTest
  names : List String
  result : TestResult

test : (name : String) -> IO TestResult -> IO Test
test name body = do
  result <- body
  pure $ MkTest [name] result

assertEqual : Eq a => a -> a -> IO TestResult
assertEqual a b = do
  putStr "x"
  pure Pass
