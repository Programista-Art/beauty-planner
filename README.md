# Beauty Planner

![Widok usługi](/img/beauty-logo.png)

# Web aplikacja do rezerwacji wizyt w salonie kosmetycznym.

## Funkcjonalności zrealizowane:

1. Przeglądanie, tworzenie, usuwanie profili użytkowników.
1. Przeglądanie dostępnych usług, usuwanie, dodawanie.
1. Panel placówki, wyświetlanie, usuwanie.
1. Panel wizyty usuwanie i zmiana statusu wizyt.
1. Blog, wyświetlnie postów, tworzenie, usuwanie.

## Funkcjonalności - w trakcie:

1. Rejestracja
1. Logowanie
1. Przypomnienia SMS
1. Kalendarz
1. Powiadomienia sms, email
1. Drukowanie i eskprost danych
1. Statystyki

### Baza danych - MySQL

1. Nazwa bazy danych beautyplanner
1. Model bazy danych dla MySQL Workbench [link](/baza/beautyplanner-eng1.mwb)
1. SQL bazy danych dla MySQL Workbench [link](/baza/beautyplanner-eng.sql)

- Z tabeli services usunąłem klucz obcy dotyczący wizyt

- Użyj skryptu `ALTER TABLE beautyplanner.services DROP FOREIGN KEY wizyty;`

### Pliki dla testów

1. Przykładowe posty [link](/przyklady/posty.odt)
1. Zdjęcia dodane do serwisa imgur.com, trzeba skopiować link i wstawić przy dodaniu produktu, na końcu linka musi być rozszerzenie (.jpg) bez tego zdjecie nie załaduje się.
   - https://i.imgur.com/x0P1e6k.jpg
   - https://i.imgur.com/CLFGj1X.jpg Zabiegi nawilżające
   - https://i.imgur.com/RJHFj8X.jpg
   - https://i.imgur.com/zB6Hq6u.jpg masaz-twarzy-kobido
   - https://i.imgur.com/j7b6yF3.jpg Mezoterapia
   - https://i.imgur.com/0vJmaQL.jpg mezoterapia-iglowa
   - https://i.imgur.com/pBTgNvT.jpg mikroiglowanie
   - https://i.imgur.com/Qky6gEU.jpg Oczyszczanie-twarzy
   - https://i.imgur.com/oZX9dfo.jpg peeling-chemiczny-twarzy
   - https://i.imgur.com/ywbs84i.jpg Radiofrekwencja

Interfejs

# Panel Usługi

![Widok usługi](/img/widok-uslugi.jpg)

# Formularz dodawania Usługi

![Widok usługi](/img/dodanie-uslugi.jpg)

# Panel Placówki Opis usługi

![Widok usługi](/img/opis-uslugi.jpg)

# Blog

![Widok usługi](/img/blog-widok.jpg)

# Panel publikacja postu

![Widok usługi](/img/publikacja-postu-widok.jpg)

# Szczegóły postu

![Widok usługi](/img/widok-post.jpg)

# Panel Kienci

![Widok usługi](/img/klienci-widok.jpg)

# Panel Placówki

![Widok usługi](/img/widok-palcówki.jpg)

# Dodanie Placówki

![Widok usługi](/img/widok2.jpg)

# Panel Wizyty

![Widok usługi](/img/wizyty.jpg)

# Panel Wizyty statusy

![Widok usługi](/img/wizyta-status.jpg)
