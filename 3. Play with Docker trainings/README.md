### Lab3 Michał Ławryk

### 3. Play with Docker trainings (Developvers)

Wybrałem zadania ze ścieżki Getting Started Walk-treough for Developers.

W sekcji 1 znajdują się pierwsze 3 zadania do wykonania.

## Zadanie 1: Docker for Beginners

Ogólnie podstawowe operacje na kontenerach, większość treści była mi znana.

![Ex1-1](images/ex1/1.png) <br/>
Uruchomienie projektu Linux Tweet App <br/><br/>

![Ex1-2](images/ex1/2.png) <br/>
Podkgąd strony internetowej <br/><br/>

![Ex1-3](images/ex1/3.png) <br/>
Kolor tła strony zmieniony na pomarańczowy <br/><br/>

![Ex1-4](images/ex1/4.png) <br/>
Modyfikacja strony internetowej, obrazu, testowanie nowej wersji i przesyłanie wyniku na Docker Hub

## Zadanie 2: Application Containerization and Microservice Orchestration

Tutaj bardziej się skupiono na Docker Compose, tworzeniu spójnego mikroserwisu wyciągającego wszystkie linki z podanej strony internetowej.

Wszystko zostało w przystępny sposób objaśnione i postępując krok po kroku przedstawiam wyniki pracy tego laboratorium

![Ex2-1](images/ex2/1.png) <br/>
Proces tworzenia i konteneryzacji serwisu <br/><br/>

![Ex2-2](images/ex2/2.png) <br/>
Widok gotowej aplikacji <br/><br/>

![Ex2-3](images/ex2/3.png) <br/>
Wynik po wprowadzeniu adresu `https://training.play-with-docker.com/` <br/><br/>

![Ex2-4](images/ex2/4.png) <br/>
Modyfikacja tekstu w stopce <br/><br/>

![Ex2-5](images/ex2/5.png) <br/>
Wyłączanie serwisu <br/><br/>

![Ex2-6](images/ex2/6.png) <br/>
Zmiana API Pythona na Ruby i testowanie


## Zadanie 3: Deploying a Multi-Service App in Docker Swarm Mode

Tematem tego zadania jest nauka tworzenia multiserwisowej aplikacji używając docker compose.

![Ex3-1](images/ex3/1.png) <br/>
Inicjalizacja roju (swarm)<br/><br/>

![Ex3-2](images/ex3/2.png) <br/>
Na zdjęciu powyżej widać bład przy próbie uruchomienia tego mutliserwisu, niestety w materiałach dydaktycznych muszą być jakieś błędy skryptu uniemożlwiające realizację tego ćwiczenia. Jednakże mimo to, zagłębiając się do poszczególnych podrozdziałów, znalazłem wiele ciekawych i wcześniej nieznanych komend wartych uwagi.


### Sekcja 2

W tej sekcji głównym założeniem jest ukazanie w jaki sposób można posługiwać się dokerem podczas całego procesu pracy programisty.

Znajdują się tam odnośniki do poradników, gdzie na podstawie przykładowego projektu springowego skolnowanego z githuba uruchamiany jest z poziomu IDE (tu do wyboru Eclipse, IntelliJ i Netbeans). Niestety ani w Eclipse ani w IntelliJ nie udało mi się uruchomić tego projektu. W przypadku Eclipse nieustanie pojawia się błąd kompilacji co widać poniżej.
![Ex4](images/ex4/1.png) <br/><br/>

Odnośnie IntelliJ, tutorial jest nieaktualny ponieważ to IDE otrzymało bardzo wiele zmian i próbując nawet swoich sił w samodzielnym przygotowaniu tego projektu, niewiele się udało wykonać.

Ta sekcja bardzo mnie zainteresowała, jednak niestety każdy tutorial odnośi się do przestarzałych wersji różnych IDE przez co stwarza to ogromne trudności z wykonaniem tego zadania.


### Sekcja 3

Sekcja 3 a zarazem ostatnia dla ścieżki Developers składa się z samych filmów udostępnionych na YouTube. Są nimi:<br/>
-Docker for .NET Developers<br/>
-Docker for Java Developers<br/>
-Building a Secure Docker Application<br/>
-Automation and Collaboration Across Multiple Swarms Using Docker Cloud<br/><br/>

W ramach zajęć laboratoryjnych zapoznałem się z tymi materiałami.