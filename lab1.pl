firma(abc).
firma(klm).
firma(mno).

kobieta(anna).
kobieta(maria).
kobieta(julia).
kobieta(ewa).
kobieta(joanna).
kobieta(lena).
kobieta(teresa).

mezczyzna(jan).
mezczyzna(karol).
mezczyzna(piotr).
mezczyzna(tomasz).
mezczyzna(lukasz).
mezczyzna(marek).
mezczyzna(jozef).

% pracownik(imie, nazwisko, firma, staz_pracy).

pracownik(anna, klimczak, firma(abc), 10).
pracownik(anna, maj, firma(abc), 1).
pracownik(maria, jankowska, firma(abc), 12).
pracownik(julia, klimczak,  firma(abc), 4).
pracownik(jan, kowal, firma(abc), 21).
pracownik(karol, lis, firma(abc), 5).
pracownik(anna, lis, firma(klm), 12).
pracownik(piotr, bednarek, firma(klm), 8).
pracownik(tomasz, bednarek, firma(klm), 2).
pracownik(ewa, wilk, firma(klm), 3).
pracownik(ewa, lipiec,firma(klm), 7).
pracownik(lukasz, polak,  firma(klm), 11).
pracownik(marek, doba, firma(klm), 8).
pracownik(anna, just, firma(mno), 22).
pracownik(joanna, wilk, firma(mno), 16).
pracownik(piotr, czekaj, firma(mno), 4).
pracownik(maria, wilczak, firma(mno), 16).
pracownik(piotr, kawa, firma(mno), 14).
pracownik(marek, czubak, firma(mno), 5).
pracownik(marek, lis, firma(mno), 4).

% Zadania:
% =========

% 1) Sprawdzić, czy:

% a) w bazie jest kobieta o imieniu lidia;

% b) w bazie jest pracownik o imieniu jan;

% c) w bazie jest pracownik o imieniu jozef;

% d) w bazie jest pracownik o nazwisku karolak;

% e) w firmie abc jest pracownik o nazwisku maj.

 
% 2) Wyświetlić:

% a) nazwiska wszystkich pracowników o imieniu anna;

% b) imiona i staż pracy wszystkich pracowników o nazwisku lis;

% c) nazwy firm, w których są pracownicy o nazwisku lis;

% d) imiona i nazwiska pracowników firmy klm;

% e) imiona i nazwiska pracowników, którzy są mezczyznami.



% 3) Stosując odpowiednie reguły zdefiniować:

% a) predykat pracownik_abc(X,Y), który jest spełniony, gdy osoba o imieniu X i nazwisku Y jest pracownikiem firmy abc;

% b) predykat pracInne(X,Y), który jest spełniony, gdy osoba o imieniu X i nazwisku Y jest pracownikiem firmy innej niż abc;

% c) predykat pracKobieta(X,Y), który jest spełniony, gdy osoba o imieniu X i nazwisku Y jest pracownikiem - kobietą.

% d) predykat dlugoletniPrac(X,Y,Z), który jest spełniony, gdy osoba o imieniu X i nazwisku Y pracuje w firmie Z i ma staż pracy co najmniej 10 lat;

% e) predykat premia(X,Y,B), który jest spełniony, gdy pracownikowi o imieniu X i nazwisku Y przysługuje premia o wartości B; premia dla pracownika wynosi 150 PLN za każdy rok pracy.