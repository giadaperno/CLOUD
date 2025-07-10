# Open-Meteo Italia

Open-Meteo Italia è una semplice applicazione web che ti permette di vedere le previsioni meteo settimanali per molte città italiane. Basta scegliere la città dall’elenco e visualizzerai subito le temperature massime e minime previste, anche in formato grafico.

---

## Come funziona?

1. **Scegli una città** dall’elenco nella pagina principale.
2. **Visualizza le previsioni**: vedrai subito un grafico con le temperature massime e minime della settimana.
3. **Nessuna registrazione richiesta**: puoi usare l’app liberamente dal tuo browser.

---

## Requisiti

- Docker Desktop (per il metodo facile)
- Oppure: Java 17+ e Maven (per il metodo tecnico)
- Sistema operativo: Windows, macOS o Linux

## Come si usa?

### Metodo FACILE (passo per passo)

1. **Scarica e installa Docker Desktop**  
   - Vai su [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)  
   - Scarica la versione per il tuo computer (Windows, Mac, Linux)  
   - Installa Docker seguendo le istruzioni sul sito

2. **Scarica questo progetto**  
   - **Metodo 1: Download ZIP**  
     - Premi il pulsante verde “Code” in alto su questa pagina e scegli “Download ZIP”  
     - Estrai la cartella dove vuoi sul tuo computer  
   - **Metodo 2: Clona la repository (consigliato se sai usare Git)**  
     - Apri il terminale  
     - Vai nella cartella dove vuoi salvare il progetto  
     - Scrivi:
       ```sh
       git clone https://github.com/giadaperno/CLOUD.git

3. **Apri la cartella del progetto**  
   - Vai nella cartella che hai appena estratto (o appena clonata)

4. **Avvia l’applicazione**  
   - Cerca un file chiamato `docker-compose.yml`  
   - Clicca con il tasto destro nella cartella e scegli “Apri nel terminale”  
   - Scrivi questo comando e premi INVIO:
     ```sh
     docker-compose up --build
     ```

5. **Guarda il meteo!**  
   - Apri il browser (Chrome, Firefox, Edge, Safari…)  
   - Vai su http://localhost:8080 
   - Scegli una città e guarda le previsioni!

---

## Metodo per utenti tecnici (passaggi dettagliati)

## Tecnologie utilizzate
- Backend: Spring Boot (Java)
- Frontend: HTML/CSS/JavaScript
- API Meteo: Open-Meteo (https://open-meteo.com/)
- Docker per il deployment locale

1. **Assicurati di avere Java 17+ e Maven installati**
   - Per verificare, apri il terminale e digita:
     ```sh
     java -version
     mvn -version
     ```
   - Se non sono installati, segui le guide ufficiali per la tua piattaforma.

2. **Clona la repository**
   - Apri il terminale nella cartella dove vuoi scaricare il progetto.
   - Esegui:
     ```sh
     git clone https://github.com/giadaperno/CLOUD.git
     ```

3. **Vai nella cartella del progetto**
   ```sh
   cd meteo2
   ```

4. **Costruisci il progetto**
   ```sh
   ./mvnw clean package -DskipTests
   ```
   - Se sei su Windows, usa `mvnw.cmd` invece di `./mvnw`.

5. **Avvia l’applicazione**
   ```sh
   java -jar target/open-meteo-0.0.1-SNAPSHOT.jar
   ```

6. **Apri il browser**
   - Vai su http://localhost:8080

---

## Linguaggio semplice e diretto

- Non serve essere esperti di informatica: basta seguire i passaggi sopra per vedere il meteo!
- Se sei uno sviluppatore, puoi esplorare il codice nella cartella `src/main/java` e personalizzare l’applicazione come preferisci.
- L’interfaccia è moderna, chiara e funziona su computer, tablet e smartphone.

