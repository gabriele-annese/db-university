-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`id` AS id_studenti, `degrees`.`id`  AS id_corsi
FROM `students` 
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';
--Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`id` AS corsi_id, `departments`.`id` AS dipartimenti_id
FROM `degrees` 
INNER JOIN `departments`
ON `degrees`.`department_id`=`departments`.`id`
WHERE `departments`.`id` = 7;
--Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`id` AS id_corsi, `teachers`.`id` AS id_teacher
FROM `courses` 
INNER JOIN `course_teacher` 
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id` = 44;
---- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`id` AS studenti_id, `students`.`name`,`students`.`surname`, `degrees`.`name` AS  corsi_nome, `departments`.`name` AS dipartimento_nome
FROM `students` 
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name` ASC,  
`students`.`surname` ASC;ß