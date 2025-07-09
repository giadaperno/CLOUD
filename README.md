# Open-Meteo

Applicazione Spring Boot che fornisce previsioni meteo settimanali per alcune città italiane, utilizzando l'API di [Open-Meteo](https://open-meteo.com/).

## Funzionalità

- Interfaccia web per selezionare una città e visualizzare le temperature massime e minime previste.
- Backend REST che si collega all'API Open-Meteo e restituisce i dati in formato JSON.
- Visualizzazione grafica delle temperature tramite Chart.js.

## Avvio rapido

### Prerequisiti

- Docker e Docker Compose installati
- (Facoltativo) Java 17+ e Maven se vuoi avviare localmente senza container

### Avvio con Docker Compose

1. Costruisci e avvia il servizio:
   ```sh
   docker-compose up --build
   ```

2. Accedi all'applicazione su [http://localhost:8080](http://localhost:8080)

### Avvio locale (senza Docker)

1. Vai nella cartella `meteo2`:
   ```sh
   cd meteo2
   ```

2. Costruisci il progetto:
   ```sh
   ./mvnw clean package
   ```

3. Avvia l'applicazione:
   ```sh
   java -jar target/open-meteo-0.0.1-SNAPSHOT.jar
   ```

4. Accedi all'applicazione su [http://localhost:8080](http://localhost:8080)

## Struttura del progetto

- `src/main/java`: codice sorgente Java (controller, service, model)
- `src/main/resources/static`: frontend HTML/JS
- `src/main/resources/application.properties`: configurazione Spring Boot
- `Dockerfile` e `docker-compose.yml`: per esecuzione containerizzata

## Configurazione

- La porta di default è la `8080`.
- Puoi impostare variabili d'ambiente tramite Docker Compose, ad esempio `SPRING_PROFILES_ACTIVE`.

## Test

Per eseguire i test:
```sh
./mvnw test
```
