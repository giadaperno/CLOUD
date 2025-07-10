# Meteo App

Applicazione web per consultare le previsioni meteo settimanali di molte città italiane, con grafico interattivo.

---

## 📂 Requisiti

- **Java 17+**
- **Maven 3.x**
- **Docker Engine** (o Docker Desktop)

---

## 🚦 Guida passo-passo per avviare l’app Meteo su un altro PC

### 1. Scarica il progetto

**Con Git:**
```sh
git clone https://github.com/giadaperno/CLOUD.git
```

```sh
cd CLOUD
```
**Oppure:**
- Scarica il progetto come ZIP da GitHub
- Estrai la cartella dove preferisci

---

### 2. (Facoltativo) Compila il progetto Java

Se vuoi ricostruire il file `.jar`:
   ```sh
  cd meteo2
   ```

---

### 3. Avvia l’applicazione con Docker

Assicurati che Docker sia avviato.

Poi, nella cartella del progetto, esegui:

```sh
docker build -t meteo2:latest .
```

```sh
docker run -p 8080:8080 meteo2:latest
```
- Il primo comando costruisce l’immagine Docker ottimizzata.
- Il secondo comando avvia il container e collega la porta 8080 del tuo PC all’applicazione.

---

### 4. Apri l’applicazione nel browser

Vai su:  
http://localhost:8080

#### Cosa troverai nella pagina:

- **Un menu a tendina**  
  Scegli la città italiana che preferisci tra le più importanti (es: Torino, Milano, Roma, Napoli, ecc.).

- **Un pulsante “Mostra grafico”**  
  Dopo aver selezionato la città, clicca sul pulsante per vedere le previsioni.

- **Un grafico interattivo**  
  Verrà visualizzato un grafico a linee che mostra le temperature massime e minime previste per la settimana.

- **Messaggi di caricamento e di errore**  
  Se i dati sono in caricamento o c’è un problema di rete, vedrai un messaggio chiaro.

- **Design moderno e responsive**  
  L’interfaccia si adatta automaticamente a PC, tablet e smartphone.

- **Icona meteo animata**  
  In alto nella pagina troverai una simpatica icona animata che rende l’esperienza più piacevole.

---

**Esempio di utilizzo:**
1. Seleziona “Milano” dal menu.
2. Clicca su “Mostra grafico”.
3. Guarda il grafico delle temperature della settimana per Milano!

---

## 🛑 Come fermare l’app

Nel terminale dove hai lanciato Docker, premi **CTRL+C**.

Per rimuovere il container (opzionale):

1. Guarda l’ID del container:
   ```sh
   docker ps
   ```
2. Ferma il container:
   ```sh
   docker stop <container_id>
   ```
3. Rimuovi il container:
   ```sh
   docker rm <container_id>
   ```

---

## 🔎 File principali del progetto

- **MeteoController.java**: gestisce le richieste HTTP e restituisce dati/grafici.
- **ExternalApiServiceImpl.java**: si occupa delle chiamate all’API Open-Meteo.
- **meteo.html**: interfaccia utente web.
- **application.properties**: configurazione dell’API e delle impostazioni dell’app.
- **docker-compose.yml**: avvio semplificato con Docker Compose.

---

## ℹ️ Problemi comuni

- **Porta 8080 occupata**: chiudi altri programmi che la usano o modifica la porta in `docker-compose.yml`.
- **Permessi Docker/Maven**: su Windows esegui il terminale come amministratore.
- **Errore “jar mancante”**: assicurati che la cartella `target/` contenga il file `.jar` (compila con Maven se serve).

---