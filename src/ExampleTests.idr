module ExampleTests

import Test

-- main : IO ()
-- main =
--   runTests do
--     testGroup1
--     testGroup2


-- testGroup1 : Test
-- testGroup1 =
--   group "String.reverse" do
--     test "reverses a string" do
--       assertEqual "123" $ reverse "321"

--     test "reversing twice is a no-op" do
--       assertEqual "123" $ (reverse . reverse) "123"


testGroup1 : IO Test
testGroup1 =
  test "String.words" $ do
    assertEqual ["Hello", "sailor"] $ words "Hello sailor"
