--Selezionare tutti gli studenti nati nel 1990
SELECT COUNT('id') as tot_students
FROM `students`
WHERE `date_of_birth` BETWEEN '1990-01-1' AND '1990-12-31';
--Selezionare tutti i corsi che valgono più di 10 crediti
SELECT COUNT('id') AS tot_exam
FROM `courses`
WHERE `cfu` > 10;
--Selezionare tutti gli studenti che hanno più di 30 anni
SELECT COUNT('id') AS tot_students_30
FROM `students` 
WHERE `date_of_birth` < '1992-01-13';
--Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea 
SELECT COUNT('id') as tot_corses
FROM `courses` 
WHERE `period` = 'I semestre' AND `year` = 1;
--Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 
SELECT COUNT('id') AS tot_exam_session
FROM `exams` 
WHERE `hour`BETWEEN '14:00:00' AND '17:00:00' AND `date` = '2020-06-20';
--Selezionare tutti i corsi di laurea magistrale
SELECT COUNT('id') AS tot_magistrale
FROM `degrees`
WHERE `name` LIKE '%magistrale%';
--Da quanti dipartimenti è composta l'università?
SELECT COUNT('id') AS tot_departments
FROM `departments` 
WHERE 1;
--Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT('id') as tot_number_null
FROM `teachers` 
WHERE `phone` IS NULL;
