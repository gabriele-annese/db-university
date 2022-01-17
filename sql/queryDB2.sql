--Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS total_iscritti, YEAR(`enrolment_date`) AS anno_iscrizione 
FROM `students` 
GROUP BY YEAR(`enrolment_date`);
--Contare gli insegnanti che hanno l'ufficio nello stesso edificio
 SELECT COUNT(*) AS numero_totale, `office_address`
FROM `teachers` 
GROUP BY `office_address`;
--Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS media ,`exam_id`
FROM `exam_student`
GROUP BY `exam_id`;
--Contare quanti corsi di laurea ci sono per ogni dipartimentoßs
