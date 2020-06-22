-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
--
-- Output one of the following statements for each record in the table:
--
-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

select case
    when A+B > C
        AND A=B
        AND B=C
        AND A=C
            then 'Equilateral'
    when A+B > C
        AND A=B OR B=C
        OR A=C
            then 'Isosceles'
    when A+B > C
        AND A!=B
            then 'Scalene'
    else 'Not A Triangle'
    End from TRIANGLES;
