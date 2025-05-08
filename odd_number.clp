; Rule: Odd_number
; Purpose: Checks if a given number is odd and prints a message

(defrule Odd_number
   ; Match any fact of the form (number ?n)
   (number ?n)
   
   ; Check if the number is odd using modulo operation
   (test (neq (mod ?n 2) 0))

   =>
   ; Print message indicating the number is odd
   (printout t "The number is odd." crlf))
