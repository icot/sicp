;; Prove that Fib(n) is the closest integer to phi^n/sqrt(5) where phi = (1/2)(1 + sqrt(5))
;;  Hint: let psi = (1 - sqrt(5))/2. Prove that Fib(n) = (phi^n - psi^n)/sqrt(5)

;; https://en.wikipedia.org/wiki/Fibonacci_number#Closed-form_expression

;; phi and psi are solutions to x^2 = x + 1 (so also for x^n = x^n-1 + x^n-2)

;; hence

;; phi^n = phi^n-1 + phi^n-2 , psi^n = psi^n-1 + psi^n-2

;; U_{n} = a*phi^n-1 + b*psi^n-1 + a*phi^-2 + b*^psi^n-2 = U_{n-1} + U_{n-2}

;; If U_0 = 0 and U1 = 1 -> U_n = Fib(n)

;; F(n) = (phi^n - psi^n)/(phi-psi) = phi^n - psi^n / sqrt(5)

;; Since abs(psi^n/sqrt(5)) < 1/2 -> F(n) is the closes integer to phi^n/sqrt(5)
