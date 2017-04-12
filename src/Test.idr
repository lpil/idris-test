module Test

-- TODO: Only export public functions
%access public export

TestResult : Type
TestResult = Bool

TestCase : Type
TestCase = (List String, TestResult)

Test : Type
Test = List TestCase

test : (name: String) -> TestResult -> Test
test name result =
  [ ([ name ], result) ]

-- suite : (name : String) -> List TestUnit -> Test
-- suite name tests =


examples : Test
examples =
  -- suite "first suite"
    -- [
    test "first test" True
    -- ]
