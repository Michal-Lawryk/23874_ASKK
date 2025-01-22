### Lab5 Michał Ławryk

### 5. DevOps with Docker (part 2)

## Zadanie 2.1

Rozwiązanie zadania w folderze ex2.1 <br/><br/>

## Zadanie 2.2

Rozwiązanie zadania w folderze ex2.2 <br/><br/>

## Zadanie 2.3

![Ex2.3](images/2.3.png) <br/>
Aplikacja uruchomiona poprzez docker-compose, pliki w folderze ex2.3 <br/><br/>

## Zadanie 2.4

![Ex2.4](images/2.4.png) <br/>
Do docker-compose dodano kontener z Redis <br/><br/>

## Zadanie 2.5

![Ex2.5](images/2.5.png) <br/>
Ćwiczenie ze skalowania serwisów. Rozwiązaniem było uruchomienie aplikacji komendą `docker-compose up --scale compute=3` <br/><br/>

## Zadanie 2.6

![Ex2.6](images/2.6.png) <br/>
Dodanie kontenera z bazą danych PostgreSQL. Widać na stronie wszystkie wysłane wiadomości <br/><br/>

## Zadanie 2.7

Modyfikacja zadania 2.6 - podpięcie katalogu lokalnego do kontenera bazodanowego w celu przechowywania i zapisywania zebranych danych. Wystarczyło w docker-compose dodać w kontenerze bazy danych dodać `volumes: - ./database:/var/lib/postgresql/data` <br/><br/>

## Zadanie 2.8

![Ex2.8](images/2.8.png) <br/>
Dodano serwis proxy w nginx <br/><br/>

## Zadanie 2.9

Wszystkie przyciski działają, gdyż błędy naprawiałem na bieżążco przy kolejnych zadaniach. Widać do w poprzednim zadaniu na obrazku. <br/><br/>

## Zadanie 2.10

![Ex2.10](images/2.10.png) <br/>

Zamknięcie wszystkich portów nie wymagających udostępnienia, otwarty jest tylko port 80 serwera proxy 