--B�I 1
--A Truy xu?t t�n c?a nh?ng nh�n vi�n nh? h?n 30 tu?i m� c� m?c l??ng l?n h?n 10.000 $.
SELECT
    fname,
    minit,
    lname
FROM
    employee
WHERE
    ( EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM bdate) > 30
      AND salary > 10000 );
--B Truy xu?t t�n c?a t?t c? nh�n vi�n c� gi?i t�nh l� �female� trong ph�ng ban �Research�.
SELECT
    fname,
    minit,
    lname
FROM
    (
             employee
        JOIN (
            SELECT
                dnumber
            FROM
                department
            WHERE
                dname = 'Research'
        ) ON dno = dnumber
    )
WHERE
    sex = 'F';
--C Truy xu?t c�c name c?a t?t c? employee c� sex l� male trong Department �Research� m� l�m cho �t nh?t m?t project nhi?u h?n 10 gi? m?t tu?n
SELECT DISTINCT
    fname,
    minit,
    lname
FROM
    (
        (
                 employee
            JOIN (
                SELECT
                    essn,
                    pno
                FROM
                    works_on
                WHERE
                    hours > 10
            ) ON ssn = essn
        )
        JOIN (
            SELECT
                dnumber
            FROM
                department
            WHERE
                dname = 'Research'
        ) ON dno = dnumber
    )
WHERE
    sex = 'M';
--D Truy xu?t t�n c?a nh�n vi�n l� manager c?a ph�ng ban �Research�
SELECT
    fname,
    minit,
    lname
FROM
    (
             employee
        JOIN (
            SELECT
                mgrssn
            FROM
                department
            WHERE
                dname = 'Research'
        ) ON ssn = mgrssn
    );
--E T�m t�n c?a t?t c? employee ???c gi�m s�t tr?c ti?p b?i manager c?a ph�ng ban �Research�
SELECT
    fname,
    minit,
    lname
FROM
    employee
WHERE
    superssn IN (
        SELECT
            ssn
        FROM
            (
                     employee
                JOIN (
                    SELECT
                        mgrssn
                    FROM
                        department
                    WHERE
                        dname = 'Research'
                ) ON ssn = mgrssn
            )
    );
--F V?i m?i project, li?t k� t�n project, v� t?ng s? gi? m?t tu?n m� t?t c? nh�n vi�n ph?i l�m cho project ?�.
SELECT
    pname,
    SUM(hours)
FROM
    (
             project
        JOIN works_on ON pnumber = pno
    )
GROUP BY
    pname;
--G V?i m?i ph�ng ban, li?t k� t�n ph�ng ban v� t�n c?a t?t c? c�c employee l�m vi?c cho ph�ng ban ?�.
SELECT
    dname,
    lname,
    minit,
    fname
FROM
    department,
    employee
WHERE
    dnumber = dno
ORDER BY
    dname ASC;
--H Truy xu?t t�n c?a t?t c? nh�n vi�n l�m vi?c cho project c� t�n l� �Olympus�
SELECT
    lname
    || ' '
    || minit
    || ' '
    || fname AS fullname
FROM
         employee
    JOIN (
        SELECT
            essn
        FROM
            (
                     works_on
                JOIN (
                    SELECT
                        pnumber
                    FROM
                        project
                    WHERE
                        pname = 'ProductX'
                ) ON pno = pnumber
            )
    ) ON ssn = essn;
--I Li?t k� t�n c?a t?t c? employee kh�ng l�m b?t c? project n�o ? �Houston�
SELECT
    lname
    || ' '
    || minit
    || ' '
    || fname AS fullname
FROM
    employee
    LEFT JOIN (
        SELECT
            essn
        FROM
                 (
                SELECT
                    pnumber
                FROM
                    project
                WHERE
                    plocation = 'Houston'
            )
            JOIN works_on ON pnumber = pno
    ) ON ssn = essn
WHERE
    essn IS NULL;