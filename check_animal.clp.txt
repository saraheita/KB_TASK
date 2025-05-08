; Rule: check_animal
; Purpose: Prints the type of an animal if it is not a dog or a cat

(defrule check_animal
   ; Match any fact of the form (animal ?type)
   (animal ?type)
   
   ; Check that the animal type is NOT 'dog' and NOT 'cat'
   (test (and (neq ?type dog) (neq ?type cat)))

   =>
   ; Print the animal type
   (printout t "The animal is a " ?type "." crlf))
