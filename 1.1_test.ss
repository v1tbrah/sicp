(require rackunit)

(define firstF
  10
  )
(check-equal? firstF 10 "not equal?")

(define secondF
  (+ 5 3 4)
  )
(check-equal? secondF 12 "not equal?")

(define thirdF
  (- 9 1)
  )
(check-equal? thirdF 8 "not equal?")

(define fourthF
  (/ 6 2)
  )
(check-equal? fourthF 3 "not equal?")

(define fifthF
  (+ (* 2 4) (- 4 6))
  )
(check-equal? fifthF 6 "not equal?")

(define a 3)
(check-equal? a 3 "not equal?")

(define b (+ a 1))
(check-equal? b 4 "not equal?")

(define sixthF
  (+ a b (* a b))
  )
(check-equal? sixthF 19 "not equal?")

(define seventhF
  (= a b)
  )
(check-equal? seventhF #f "not equal?")

(define eighthF
  (if (and (> b a) (< b (* a b)))
    b
    a)
  )
(check-equal? eighthF 4 "not equal?")

(define ninthF
  (cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
    (else 25))
  )
(check-equal? ninthF 16 "not equal?")

(define tenthF
  (+ 2 (if (> b a) b a))
  )
(check-equal? tenthF 6 "not equal?")

(define eleventhF
  (* (cond ((> a b) a)
       ((< a b) b)
       (else -1))
    (+ a 1))
  )
(check-equal? eleventhF 16 "not equal?")
