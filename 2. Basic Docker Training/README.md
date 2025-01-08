### Lab2 Michał Ławryk

### 1.BASIC DOCKER TRAINING

## Zadanie 1: Running Containers


![Ex1-1](images/ex1/1.png) <br/>
Komenda `docker image` <br/><br/>

![Ex1-2](images/ex1/2.png) <br/>
Komenda `docker search <ubuntu>` <br/><br/>

![Ex1-3](images/ex1/3.png) <br/>
Komenda `docker pull ubuntu:22.04` <br/><br/>

![Ex1-4](images/ex1/4.png) <br/>
Komenda `docker pull ubuntu:22.10` <br/><br/>

![Ex1-5](images/ex1/5.png) <br/>
Komenda `docker images` <br/><br/>

![Ex1-6](images/ex1/6.png) <br/>
Komenda `docker rmi <692eb4a905c0>` <br/><br/>

![Ex1-7](images/ex1/7.png) <br/>
Komenda `docker images` <br/><br/>

![Ex1-8](images/ex1/8.png) <br/>
Komenda `docker rmi $(docker images -q)` <br/><br/>

![Ex1-9](images/ex1/9.png) <br/>
Komenda `docker run ubuntu:22.04 /bin/echo 'Hello world!'` <br/><br/>

![Ex1-10](images/ex1/10.png) <br/>
Komenda `docker ps` <br/><br/>

![Ex1-11](images/ex1/11.png) <br/>
Komenda `docker ps -a` <br/><br/>

![Ex1-12](images/ex1/12.png) <br/>
Komenda `docker run ubuntu:22.04 /bin/bash` <br/><br/>

![Ex1-13](images/ex1/13.png) <br/>
Komenda `docker ps -a` <br/><br/>

![Ex1-14](images/ex1/14.png) <br/>
Komenda `docker run -it ubuntu:22.04 /bin/bash` <br/><br/>

![Ex1-15](images/ex1/15.png) <br/>
Komenda wyświetlająca katalogi systemowe <br/><br/>

![Ex1-16](images/ex1/16.png) <br/>
Komenda `/bin/sleep 3600` <br/><br/>

![Ex1-17](images/ex1/17.png) <br/>
Komenda `docker ps` <br/><br/>

![Ex1-18](images/ex1/18.png) <br/>
Komenda `docker exec -it d36 /bin/bash` <br/><br/>

![Ex1-19](images/ex1/19.png) <br/>
Komenda `ps aux` <br/><br/>

![Ex1-20](images/ex1/20.png) <br/>
Komenda `exit` <br/><br/>

![Ex1-21](images/ex1/21.png) <br/>
Komenda `docker stop d368` <br/><br/>

![Ex1-22](images/ex1/22.png) <br/>
Komenda `docker ps -a` <br/><br/>

![Ex1-23](images/ex1/23.png) <br/>
Komenda `docker ps -a` <br/><br/>



## Zadanie 2: Changing Images


![Ex2-1](images/ex2/1.png) <br/>
Komenda `docker pull ubuntu:16.04` <br/><br/>

![Ex2-2](images/ex2/2.png) <br/>
Komenda `docker run -it ubuntu:16.04 /bin/bash` <br/><br/>

![Ex2-3](images/ex2/3.png) <br/>
Komenda `ping google.com` <br/><br/>

![Ex2-4](images/ex2/4.png) <br/>
Komenda `apt-get update` <br/><br/>

![Ex2-5](images/ex2/5.png) <br/>
Komenda `apt-get install iputils-ping` <br/><br/>

![Ex2-6](images/ex2/6.png) <br/>
Komenda `ping google.com` <br/><br/>

![Ex2-7](images/ex2/7.png) <br/>
Komenda `docker ps -a` <br/><br/>

![Ex2-8](images/ex2/8.png) <br/>
Komenda `docker commit --help` <br/><br/>

![Ex2-9](images/ex2/9.png) <br/>
Komenda `docker commit -a "Michal Lawryk" -m "Added ping utility." ce5 <DockerHub username>/ping` <br/><br/>

![Ex2-10](images/ex2/10.png) <br/>
Komenda `docker images` <br/><br/>

![Ex2-11](images/ex2/11.png) <br/>
Komenda `docker run -it --rm <DockerHub username>/ping /bin/bash` <br/><br/>



## Zadanie 3: Building Images


![Ex3-1](images/ex3/1.png) <br/>
Komenda `docker pull ubuntu:16.04` <br/><br/>

![Ex3-2](images/ex3/2.png) <br/>
Komenda `docker images` <br/><br/>

![Ex3-3](images/ex3/3.png) <br/>
Tworzenie pliku Dockerfile <br/><br/>

![Ex3-4](images/ex3/4.png) <br/>
Komenda `docker build -t michal/ping .` <br/><br/>

![Ex3-5](images/ex3/5.png) <br/>
Komenda `docker build -t michal/ping .` <br/><br/>

![Ex3-6](images/ex3/6.png) <br/>
Komenda `docker images` <br/><br/>

![Ex3-7](images/ex3/7.png) <br/>
Optymalizacja pliku Dockerfile <br/><br/>

![Ex3-8](images/ex3/8.png) <br/>
Komenda `docker images` <br/><br/>

![Ex3-9](images/ex3/9.png) <br/>
Kolejna optymalizacja Dockerfile <br/><br/>

![Ex3-10](images/ex3/10.png) <br/>
Komenda `docker images` <br/>
Obraz jest lżejszy od pierwotnego o 28MB <br/><br/>

![Ex3-11](images/ex3/11.png) <br/>
Dodanie polecenia ping po uruchomieniu kontenera <br/><br/>

![Ex3-12](images/ex3/12.png) <br/>
Komenda `docker run -it michal/ping` <br/><br/>



## Zadanie 4: Sharing Images


![Ex4-1](images/ex4/1.png) <br/>
Komenda `docker login` <br/><br/>

![Ex4-2](images/ex4/2.png) <br/>
Komenda `docker search kafka` <br/><br/>

![Ex4-3](images/ex4/3.png) <br/>
Komenda `docker tag michal/ping <DockerHub username>/ping:1.0` <br/><br/>

![Ex4-4](images/ex4/4.png) <br/>
Komenda `docker push <DockerHub username>/ping:1.0` <br/><br/>



## Zadanie 5: Volumes


![Ex5-1](images/ex5/1.png) <br/>
![Ex5-2](images/ex5/2.png) <br/>
Uruchomienie apache <br/><br/>

![Ex5-3](images/ex5/3.png) <br/>
Podmienienie pliku strony internetowej serwera apache <br/><br/>

![Ex5-4](images/ex5/4.png) <br/>
Zawartość strony wyświetlanej przez serwer <br/><br/>

![Ex5-5](images/ex5/5.png) <br/>
Serwer nie pamięta zmian po ponownym uruchomieniu kontenera. Należy skorzystać z wolumenu <br/><br/>

![Ex5-6](images/ex5/6.png) <br/>
Operacje tworzenia i usuwania wolumenów <br/><br/>

![Ex5-7](images/ex5/7.png) <br/>
Instalacja stworzonego wolumenu do serwera apache <br/><br/>

![Ex5-8](images/ex5/8.png) <br/>
Przesłanie pliku html do katalogu serwerowego, gdzie został zainstalowany wolumen <br/><br/>

![Ex5-9](images/ex5/9.png) <br/>
Nawet po ponownym uruchomieniu kontenera, zmiany zostają zachowane za sprawą wolumenu. Na koniec pracy zatrzymuje serwer apache i usuwam wolumen. <br/><br/>

![Ex5-10](images/ex5/10.png) <br/>
Istnieję również możliwość bezpośredniego podłączenia lokalnego katalogu do kontenera serwerowego, pomojając konieczność tworzenia wolumenu. Na powyższym screenie przedstawione zostało jak tego dokonać. Jak widać później, plik html z katalogu lokalnego został wczytany do serwera apache. <br/><br/>



## Zadanie 6: Networking


![Ex6-1](images/ex6/1.png) <br/>
Komenda `docker network ls` <br/><br/>

![Ex6-2](images/ex6/2.png) <br/>
Komenda `docker network inspect bridge` <br/><br/>

![Ex6-3](images/ex6/3.png) <br/>
Komenda `docker run --rm -d --name dummy michal/ping` <br/><br/>

![Ex6-4](images/ex6/4.png) <br/>
Komenda `docker network inspect bridge` <br/>
Dummy został dodany do domyślnej sieci <br/><br/>

![Ex6-5](images/ex6/5.png) <br/>
Komenda `docker run --rm -d -d PING_TARGET=172.17.0.2 --name pinger michal/ping` <br/>
Następnie wyświetlenie logów uruchomionego kontenera `docker logs pinger` <br/>
Jak widać pinger poprawnie pinguje kontener o podanym adresie IP <br/><br/>

![Ex6-6](images/ex6/6.png) <br/>
Komenda `docker run --rm -d -d PING_TARGET=dummy --name pinger michal/ping` <br/>
Nie rozpoznano nazwy kontenera co spowodowało przerwanie działania pingera <br/><br/>

![Ex6-7](images/ex6/7.png) <br/>
Komenda `docker network create skynet` <br/>
Utworzono sieć "skynet" <br/><br/>

![Ex6-8](images/ex6/8.png) <br/>
Zatrzymanie działających kontenerów, następnie uruchomienie dummy i pingera jak poprzednio, tyle że przypisano te kontenery do sieci skynet <br/>
Jak widać po logach, pinger działa poprawnie po wprowadzeniu jako cel nazwę hosta <br/><br/>

![Ex6-9](images/ex6/9.png) <br/>

![Ex6-10](images/ex6/10.png) <br/>
Postępując zgodnie z instrukcjami autora, nie udało się uruchomić kontenera postgres
