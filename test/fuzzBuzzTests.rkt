#lang racket
(require "../main/fizzBuzz.rkt")
(require rackunit)

(define/provide-test-suite buildSetTests
  (test-suite "Testing buildSet"
    (test-case "Test buildSet low -> high"
      (check-match (buildSet '() 1 15) '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)))
    (test-case "Test buildSet high -> low"
      (check-match (buildSet '() 15 1) '()))))
    
(define/provide-test-suite fizzBuzzTests
  (test-suite "Testing fizzBuzz"
    (test-case "Test fizzBuzz low -> high"
       (check-match (fizzBuzz '() 1 15) '(1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz)))
    (test-case "Test fizzBuzz high -> low"
	(check-match (fizzBuzz '() 15 1) '()))))
