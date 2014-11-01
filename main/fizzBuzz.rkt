#lang racket
(require math/number-theory)

(provide buildSet)
(provide fizzBuzz)

(define buildSet
  (lambda (ls start end)
    (cond
      ((= start end) (cons end ls))
      ((< end start) ls)
      (else (buildSet(cons end ls) start (- end 1))))))

(define fizzBuzz
  (lambda (ls start end)
    (cond
      ((= start end) (cons end ls))
      ((< end start) ls)
      ((and (divides? 3 end) (divides? 5 end)) (fizzBuzz(cons 'fizzbuzz ls) start (- end 1)))
      ((divides? 3 end) (fizzBuzz(cons 'fizz ls) start (- end 1)))
      ((divides? 5 end) (fizzBuzz(cons 'buzz ls) start (- end 1)))
      (else (fizzBuzz(cons end ls) start (- end 1))))))
