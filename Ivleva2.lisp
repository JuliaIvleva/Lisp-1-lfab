### Ивлева Юлия
### Вариант №42, задание 2_02
### Определить функционал MAPLIST (fn список) для одного списочного аргумента

(defun maplistf (fn list)
  (cond ((null list) nil)
        (t  (cons (funcall fn list) (maplistf fn (cdr list))))))

;(maplistf 'list  '(1 2 3))
;(((1 2 3)) ((2 3)) ((3)))

