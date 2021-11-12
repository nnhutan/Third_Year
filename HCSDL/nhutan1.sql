--BÀI 1
--A Truy xu?t tên c?a nh?ng nhân viên nh? h?n 30 tu?i mà có m?c l??ng l?n h?n 10.000 $.
SELECT
    fname,
    minit,
    lname
FROM
    employee
WHERE
    ( EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM bdate) > 30
      AND salary > 10000 );
--B Truy xu?t tên c?a t?t c? nhân viên có gi?i tính là “female” trong phòng ban “Research”.
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
--C Truy xu?t các name c?a t?t c? employee có sex là male trong Department “Research” mà làm cho ít nh?t m?t project nhi?u h?n 10 gi? m?t tu?n
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
--D Truy xu?t tên c?a nhân viên là manager c?a phòng ban “Research”
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
--E Tìm tên c?a t?t c? employee ???c giám sát tr?c ti?p b?i manager c?a phòng ban “Research”
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
--F V?i m?i project, li?t kê tên project, và t?ng s? gi? m?t tu?n mà t?t c? nhân viên ph?i làm cho project ?ó.
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
--G V?i m?i phòng ban, li?t kê tên phòng ban và tên c?a t?t c? các employee làm vi?c cho phòng ban ?ó.
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
--H Truy xu?t tên c?a t?t c? nhân viên làm vi?c cho project có tên là “Olympus”
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
--I Li?t kê tên c?a t?t c? employee không làm b?t c? project nào ? “Houston”
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