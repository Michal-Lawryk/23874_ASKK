### Lab6 Michał Ławryk

### 6. DevOps with Docker (part 3)

## Zadanie 3.1

![Ex3.1/1](images/3.1/1.png) <br/>
Działający pipeline na repozytorium <br/><br/>

![Ex3.1/2](images/3.1/2.png) <br/>
Obraz wrzuzony automatycznie po pushu <br/>
Plik .yml w folderze ex3.1 <br/><br/>

## Zadanie 3.3

![Ex3.3/1](images/3.3/1.png) <br/>
Uruchomienie skryptu <br/> <br/>

![Ex3.3/2](images/3.3/2.png) <br/>
Obraz pushnięty na Docker Hub <br/><br/>

## Zadanie 3.5

W tym zadaniu należało do Dockerfile backendu i frontendu wprowadzić komendy przechodzące na innego użytkownika tak żeby kontener nie był rootem. Rozwiązanie znajduje się w folderze ex3.5 <br/><br/>

## Zadanie 3.6

![Ex3.6/1](images/3.6/1.png) <br/>
Po zastosowani instrukcji do tego zadania, tak prezentuje się różnica w wadze obrazow frontendu <br/><br/>

![Ex3.6/2](images/3.6/2.png) <br/>
A tak po stronie backendu <br/><br/>

## Zadanie 3.7

![Ex3.7/1](images/3.7/1.png) <br/>
Porównanie wagi obrazów frontendu po zmianie na alpine <br/>

![Ex3.7/2](images/3.7/2.png) <br/>
Porównanie wagi obrazów backendu po zmianie na alpine. Tutaj dostrzec możną spore odciążenie pamięci <br/> <br/>

## Zadanie 3.8

![Ex3.8](images/3.8/1.png) <br/>
Po wprowadzeniu budowy wieloetapowej obrazu, udało mi się zejść do wagi zaledwie 119 MB dla frontendu. Przypomnę tylko, że przed wykonaniem obecnych zadań ważył on 612 MB <br/><br/>

## Zadanie 3.9

![Ex3.9](images/3.9/1.png) <br/>
Po wprowadzeniu budowy wieloetapowej obrazu, udało mi się zejść do wagi 19 MB dla backendu. Jest to ogromny sukces biorąc pod uwagę fakt bazowej wagi tego obrazu - 1.06 GB <br/><br/>
