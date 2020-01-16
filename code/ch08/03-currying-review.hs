module CurryingReview where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy = flip cattyConny

appedCatty = cattyConny "whoops"
frappe = flippy "haha"


-- 3. frappe (appedCatty "2")
-- = frappe ("whoops mrow 2")
-- = "whoops mrow 2 mrow haha"
--
-- 4. appedCatty (frappe "blue")
-- = appedCatty ("blue mr haha")
-- = "whoops mrow blue mrow hahah"
--
-- 5. cattyConny (frappe "pink")
--               (cattyConny "green" (appedCatty "blue"))
-- = cattyConny ("pink mrow haha") (cattyConny "green" "whoops mrow blue")
-- = cattyConny "pink mrow haha" "green mrow whoops mrow blue"
-- = "pink mrow haha mrow green mrow whoops mrow blue"
