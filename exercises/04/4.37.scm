(define (a-pythagorean-triple-between low high)
  (let ((i (an-integer-between low high))
        (hsq (* high high)))
    (let ((j (an-integer-between i high))
      (let ((ksq (+ (* i i) (* j j))))
        (require (>= hsq ksq))   ; 这里是防止 k 的值大于 high
        (let ((k (sqrt ksq))
          (require (integer? k))
          (list i j k))))))))

相比 4.35 中的方法，本题中的方法少了一层不确定求值
