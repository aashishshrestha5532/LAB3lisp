Error while reading: A comma appears outside the scope of a backquote (or there are too many commas).

CL-USER 1 > defun change ( x y)
CHANGE

CL-USER 2 >  (defun change ( x y)
(* (/ (- y x) x) 100))
CHANGE

CL-USER 3 > (change(4 6))

Error: Illegal argument in functor position: 4 in (4 6).
  1 (continue) Evaluate 4 and ignore the rest.
  2 (abort) Return to level 0.
  3 Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 4 : 1 > (change 4 6)
50

CL-USER 5 : 1 >  (defun change ( x y)
(let ((diff(- x y)) (proportion (/ diff x)) (percent (* proportion 100)) ) percentage))  
CHANGE

CL-USER 6 : 1 > (change 1.5 1.6)

Error: The variable DIFF is unbound.
  1 (continue) Try evaluating DIFF again.
  2 Return the value of :DIFF instead.
  3 Specify a value to use this time instead of evaluating DIFF.
  4 Specify a value to set DIFF to.
  5 (abort) Return to level 1.
  6 Return to debug level 1.
  7 Evaluate 4 and ignore the rest.
  8 Return to level 0.
  9 Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 7 : 2 >  (defun change ( x y)
(let* ((diff(- x y)) (proportion (/ diff x)) (percent (* proportion 100)) ) percentage))  
CHANGE

CL-USER 8 : 2 > (change 1.2 1.26)

Error: The variable PERCENTAGE is unbound.
   1 Try evaluating PERCENTAGE again.
   2 Return the value of :PERCENTAGE instead.
   3 Specify a value to use this time instead of evaluating PERCENTAGE.
   4 Specify a value to set PERCENTAGE to.
   5 (abort) Return to level 2.
   6 Return to debug level 2.
   7 Return to level 1.
   8 Return to debug level 1.
   9 (continue) Evaluate 4 and ignore the rest.
  10 Return to level 0.
  11 Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 9 : 3 >  (defun change ( x y)
(let* ((diff(- x y)) (proportion (/ diff x)) (percent (* proportion 100)) ) percent))  
CHANGE

CL-USER 10 : 3 > (change 3.5 3.59)
-2.5714262

CL-USER 11 : 3 >  (defun change ( x y)
(let* ((diff(- y x)) (proportion (/ diff x)) (percent (* proportion 100)) ) percent))  
CHANGE

CL-USER 12 : 3 > (change 1.2 1.25)
4.1666627

CL-USER 13 : 3 > (change 20 25)
25

CL-USER 14 : 3 > 