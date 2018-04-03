### Ивлева Юлия
### Вариант №42, задание 2_02
### Определить функционал MAPLIST (fn список) для одного списочного аргумента

(defun maplistf (fn list)
  (cond ((null list) nil)
        (t  (cons (funcall fn list) (maplistf fn (cdr list))))))

;(maplistf 'list  '(1 2 3))
;(((1 2 3)) ((2 3)) ((3)))

###Определите функциональный предикат (КАЖДЫй пред список), который истинен в том и только в том случае, когда, являющейся функциональным аргументом предикат пред истинен для всех элементов списка список. 
### Задание 2_04
(defun ever(fn list)
  (mapcar (lambda (x) (if (funcall fn x) (print nil) (print t))) list))

;(ever `atom `(1 2 3 (2 3)))
;NIL
; (ever `atom `(1 2 3 2 3))
;T
