
CL-USER 1 > (defun c-to-f (c)
              (+ (* (/ 9 5) c) 32))
C-TO-F

CL-USER 2 > (c-to-f -40)
-40

CL-USER 3 > (defun my-absolute (x)
		( if (< x 0) (- x) x)
	)
MY-ABSOLUTE

CL-USER 4 > (my-absolute 2)
2

CL-USER 5 > (my-absolute -2)
2

CL-USER 6 > (defun ordered (list a b) 
              (if (> a b) (list b a) (list a b)))
ORDERED

CL-USER 7 > (ordered 2 3)

Error: ORDERED got 2 args, wanted at least 3.
  1 (abort) Return to level 0.
  2 Return to top loop level 0.

Type :b for backtrace or :c <option number> to proceed.
Type :bug-form "<subject>" for a bug report template or :? for other options.

CL-USER 8 : 1 > (defun ordered ( a b) 
              (if (> a b) (list b a) (list a b)))
ORDERED

CL-USER 9 : 1 > (ordered 2 3)
(2 3)

CL-USER 10 : 1 > (ordered 3 2)
(2 3)

CL-USER 11 : 1 > (defun macro (a b)(cond ((= a b) 'EQUAL ) ((> a b) 'GREATER) ((< a b) 'LESSER))) 
MACRO

CL-USER 12 : 1 > 
(macro 5 6)
LESSER

CL-USER 13 : 1 > (macro 5 5)
EQUAL

CL-USER 14 : 1 > (macro 4 3)
GREATER

CL-USER 15 : 1 > (defun macro (a b c)(cond ((= (+ a b) c) 'PRODUCT_OF ) ((= (* a b) c) 'PRODUCT_OF) '(UNKNOWN))) 
MACRO

CL-USER 16 : 1 > 
(macro 2 3 6)
PRODUCT_OF

CL-USER 17 : 1 > (macro 4 5 9)
PRODUCT_OF

CL-USER 18 : 1 > (defun macro (a b c)(cond ((= (+ a b) c) 'SUM_OF ) ((= (* a b) c) 'PRODUCT_OF) '(UNKNOWN))) 
MACRO

CL-USER 19 : 1 > (macro 4 5 9)
SUM_OF

CL-USER 20 : 1 > (macro 9 5 45)
PRODUCT_OF

CL-USER 21 : 1 > (defun constrain ( x min max)
                   ( if (< x min) min (if (> x max) max x)))
CONSTRAIN

CL-USER 22 : 1 > (constrain 92 -50 50)
50

CL-USER 23 : 1 > (constrain 3 -50 50)
3

CL-USER 24 : 1 > 