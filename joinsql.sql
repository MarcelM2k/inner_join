Podstawowe:
    zadanie 1
    SELECT avg(Cena) as "Średnia cena" FROM ksiazki;

    zadanie 2
    SELECT COUNT(id_ksiazki) as "Ilość książek" from ksiazki;

    zadanie 3
    SELECT MAX(Cena) as "Najwzsza cena", tytul, Cena FROM ksiazki;

    zadanie 4
    SELECT MIN(Cena) as "Najniższa cena", tytul, Cena FROM ksiazki;

    zadanie 5
    SELECT SUM(Cena) AS "Cena wysztskich książek" FROM ksiazki;

    zadanie 11
    SELECT concat(imie, " " , nazwisko) FROM klienci;

    zadanie 12
    SELECT upper(tytul) FROM ksiazki;

    zadanie 13
    SELECT lower(wydawnictwo) FROM wydawnictwa;

    zadanie 14
    SELECT length(tytul) FROM ksiazki;

    zadanie 15
    SELECT substring(imie, 1, 3) FROM klienci;

Średnio Zaawansowany:
    zadanie 1
    SELECT round(AVG(Cena), 2) AS "Średnia cena" FROM ksiazki GROUP BY id_gatunku;

    zadanie 2
    SELECT MAX(Cena) - MIN(Cena) AS "Różnica cen" FROM ksiazki;

    zadanie 3
    SELECT * FROM ksiazki GROUP BY id_ksiazki HAVING AVG(Cena) < Cena;

    zadanie 4
    SELECT MAX(wynagrodzenie) - MIN(wynagrodzenie) AS "Różnica wynagrodzeń" FROM pracownicy;
    
    zadanie 5
    SELECT round(SUM(pracownicy.wynagrodzenie), 2) AS "Suma wynagrodzeń", round(AVG(pracownicy.wynagrodzenie), 2) AS "suma wynagrodzeń" FROM stanowiska, pracownicy INNER JOIN stanowiska s ON s.id_stanowiska = pracownicy.id_stanowiska GROUP BY s.nazwa;

    zadanie 11
    SELECT lower(concat(substring(imie, 1, 1), substring(nazwisko, 1, 3))) AS "Potencjalny login" FROM klienci;

    zadanie 12
    SELECT REPLACE(tytul, " ", "_") FROM ksiazki;

    zadanie 13
    SELECT tytul FROM ksiazki WHERE tytul LIKE '%a%';

    zadanie 14
    SELECT k.tytul, g.gatunek FROM ksiazki k INNER JOIN gatunki g ON k.id_gatunku = g.id_gatunku;

    zadanie 15
    SELECT substring(kod_pocztowy, 1, 2) AS "Pierwsza część kodu pocztowego" FROM klienci;

Zaawansowany:
    zadanie 1
    SELECT round(Cena * SUM(Cena) / 100, 2) AS "Udział procentowy" FROM ksiazki GROUP BY id_ksiazki;

    zadanie 2
    SELECT concat(imie, " ", nazwisko) AS "klient" FROM klienci k INNER JOIN sprzedaz s ON s.id_klienta = k.id_klienta GROUP BY k.id_klienta HAVING AVG(s.id_klienta) < COUNT(s.id_klienta);

    zadanie 3

    zadanie 4
    SELECT w.wydawnictwo, COUNT(k.id_wydawnictwa) AS "ilość książek" FROM wydawnictwa w INNER JOIN ksiazki k ON w.id_wydawnictwa = k.id_wydawnictwa GROUP BY k.id_wydawnictwa ORDER BY COUNT(k.id_wydawnictwa) DESC;

    zadanie 5
    