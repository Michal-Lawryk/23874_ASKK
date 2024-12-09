### Lab2 Michał Ławryk

### 1.BASIC DOCKER TRAINING

## Zadanie 1:
#### Running Containers


![Ex1-1](images/ex1/1.png) <br/>
Komenda `docker image` <br/>

![Ex1-2](images/ex1/2.png) <br/>
Komenda `docker search <ubuntu>` <br/>

![Ex1-3](images/ex1/3.png) <br/>
Komenda `docker pull ubuntu:22.04` <br/>

![Ex1-4](images/ex1/4.png) <br/>
Komenda `docker pull ubuntu:22.10` <br/>

![Ex1-5](images/ex1/5.png) <br/>
Komenda `docker images` <br/>

![Ex1-6](images/ex1/6.png) <br/>
Komenda `docker rmi <692eb4a905c0>` <br/>

![Ex1-7](images/ex1/7.png) <br/>
Komenda `docker images` <br/>

![Ex1-8](images/ex1/8.png) <br/>
Komenda `docker rmi $(docker images -q)` <br/>

![Ex1-9](images/ex1/9.png) <br/>
Komenda `docker run ubuntu:22.04 /bin/echo 'Hello world!'` <br/>

![Ex1-10](images/ex1/10.png) <br/>
Komenda `docker ps` <br/>

![Ex1-11](images/ex1/11.png) <br/>
Komenda `docker ps -a` <br/>

![Ex1-12](images/ex1/12.png) <br/>
Komenda `docker run ubuntu:22.04 /bin/bash` <br/>

![Ex1-13](images/ex1/13.png) <br/>
Komenda `docker ps -a` <br/>

![Ex1-14](images/ex1/14.png) <br/>
Komenda `docker run -it ubuntu:22.04 /bin/bash` <br/>

![Ex1-15](images/ex1/15.png) <br/>
Komenda wyświetlająca katalogi systemowe <br/>

![Ex1-16](images/ex1/16.png) <br/>
Komenda `/bin/sleep 3600` <br/>

![Ex1-17](images/ex1/17.png) <br/>
Komenda `docker ps` <br/>

![Ex1-18](images/ex1/18.png) <br/>
Komenda `docker exec -it d36 /bin/bash` <br/>

![Ex1-19](images/ex1/19.png) <br/>
Komenda `ps aux` <br/>

![Ex1-20](images/ex1/20.png) <br/>
Komenda `exit` <br/>

![Ex1-21](images/ex1/21.png) <br/>
Komenda `docker stop d368` <br/>

![Ex1-22](images/ex1/22.png) <br/>
Komenda `docker ps -a` <br/>

![Ex1-23](images/ex1/23.png) <br/>
Komenda `docker ps -a` <br/>



## Zadanie 2:
#### Changing Images


![Ex2-1](images/ex2/1.png)
Komenda `docker pull ubuntu:16.04`

![Ex2-2](images/ex2/2.png)
Komenda `docker run -it ubuntu:16.04 /bin/bash`

![Ex2-3](images/ex2/3.png)
Komenda `ping google.com`

![Ex2-4](images/ex2/4.png)
Komenda `apt-get update`

![Ex2-5](images/ex2/5.png)
Komenda `apt-get install iputils-ping`

![Ex2-6](images/ex2/6.png)
Komenda `ping google.com`

![Ex2-7](images/ex2/7.png)
Komenda `docker ps -a`

![Ex2-8](images/ex2/8.png)
Komenda `docker commit --help`

![Ex2-9](images/ex2/9.png)
Komenda `docker commit -a "Michal Lawryk" -m "Added ping utility." ce5 <DockerHub username>/ping`

![Ex2-10](images/ex2/10.png)
Komenda `docker images`

![Ex2-11](images/ex2/11.png)
Komenda `docker run -it --rm <DockerHub username>/ping /bin/bash`



## Zadanie 3:
#### Building Images


![Ex3-1](images/ex3/1.png)
Komenda `docker pull ubuntu:16.04`

![Ex3-2](images/ex3/2.png)
Komenda `docker images`

![Ex3-3](images/ex3/3.png)
Tworzenie pliku Dockerfile

![Ex3-4](images/ex3/4.png)
Komenda `docker build -t michal/ping .`

![Ex3-5](images/ex3/5.png)
Komenda `docker build -t michal/ping .`

![Ex3-6](images/ex3/6.png)
Komenda `docker images`

![Ex3-7](images/ex3/7.png)
Optymalizacja pliku Dockerfile

![Ex3-8](images/ex3/8.png)
Komenda `docker images`

![Ex3-9](images/ex3/9.png)
Kolejna optymalizacja Dockerfile

![Ex3-10](images/ex3/10.png)
Komenda `docker images`

Obraz jest lżejszy od pierwotnego o 28MB

![Ex3-11](images/ex3/11.png)
Dodanie polecenia ping po uruchomieniu kontenera

![Ex3-12](images/ex3/12.png)
Komenda `docker run -it michal/ping`



## Zadanie 4:
#### Sharing Images


![Ex4-1](images/ex4/1.png)
Komenda `docker login`

![Ex4-2](images/ex4/2.png)
Komenda `docker search kafka`

![Ex4-3](images/ex4/3.png)
Komenda `docker tag michal/ping <DockerHub username>/ping:1.0`

![Ex4-4](images/ex4/4.png)
Komenda `docker push <DockerHub username>/ping:1.0`



## Zadanie 5:
#### Volumes


![Ex5-1](images/ex5/1.png)
![Ex5-2](images/ex5/2.png)
Uruchomienie apache

![Ex5-3](images/ex5/3.png)
Podmienienie pliku strony internetowej serwera apache

![Ex5-4](images/ex5/4.png)
Zawartość strony wyświetlanej przez serwer

![Ex5-5](images/ex5/5.png)
Serwer nie pamięta zmian po ponownym uruchomieniu kontenera. Należy skorzystać z wolumenu

![Ex5-6](images/ex5/6.png)
Operacje tworzenia i usuwania wolumenów

![Ex5-7](images/ex5/7.png)
Instalacja stworzonego wolumenu do serwera apache

![Ex5-8](images/ex5/8.png)
Przesłanie pliku html do katalogu serwerowego, gdzie został zainstalowany wolumen

![Ex5-9](images/ex5/9.png)
Nawet po ponownym uruchomieniu kontenera, zmiany zostają zachowane za sprawą wolumenu. Na koniec pracy zatrzymuje serwer apache i usuwam wolumen.

![Ex5-10](images/ex5/10.png)
Istnieję również możliwość bezpośredniego podłączenia lokalnego katalogu do kontenera serwerowego, pomojając konieczność tworzenia wolumenu. Na powyższym screenie przedstawione zostało jak tego dokonać. Jak widać później, plik html z katalogu lokalnego został wczytany do serwera apache.



## Zadanie 6:
#### Networking


![Ex6-1](images/ex6/1.png)
