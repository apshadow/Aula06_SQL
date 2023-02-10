-- EXERCICIOS - AULA 6

ALTER SESSION SET
    NLS_DATE_FORMAT = 'DD/MM/YYYY';

-- TRAZER  TODOS OS FUNCIONARIOS LISTANDO CODIGO, NOME E DATA DE NASCIMENTO E NOME DO DEPARTAMENTO
-- FILTRADO PELO DEPARTAMENTO 90

SELECT * FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;
SELECT * FROM JOB_HISTORY;

SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.HIRE_DATE,
    D.DEPARTMENT_NAME
        FROM EMPLOYEES E JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
        AND D.DEPARTMENT_ID = 90
        ORDER BY E.EMPLOYEE_ID;
    
-- EX 1
/* 01 - Selecionando todos os funcionários, os quais o department_id
esteja entre 10 e 30, ordenando por nome de departamento
*/

SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    D.DEPARTMENT_NAME,
    D.DEPARTMENT_ID
        FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID AND D.DEPARTMENT_ID 
        BETWEEN '10' AND '30'
        ORDER BY 3;

-- EX 2
/* 02 - Selecionando todos os funcionários, EXCETO OS FUNCIONARIOS
DOS DEPARTAMENTOS ENTRE 50 E 100*/

SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    D.DEPARTMENT_NAME,
    D.DEPARTMENT_ID
        FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID AND D.DEPARTMENT_ID 
        NOT BETWEEN '50' AND '100'
        ORDER BY 1;
        
-- EX 3
/* 03 - Selecionar id, nome, sobrenome e salario de funcionarios
que possuam salario maior ou igual a 3000 e que contenham a letra 'a' e/ou 'A'
no primeiro nome*/

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    SALARY,
    MANAGER_ID
        FROM EMPLOYEES
        WHERE SALARY >= 3000 AND (FIRST_NAME LIKE '%A%' OR FIRST_NAME LIKE '%a%')
        ORDER BY 4;
        
-- EX 4
/* 04 - Selecionar todos os nomes de funcionarios que tenham
sido promovidos em algum momento*/

SELECT DISTINCT
    E.FIRST_NAME
        FROM EMPLOYEES E INNER JOIN JOB_HISTORY J
        ON E.EMPLOYEE_ID = J.EMPLOYEE_ID;   
    
        
        
        
        