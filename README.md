# Exemple d'aplicació adaptativa amb JavaFX #

En aquest projecte un exemple d'aplicació adaptadiva amb .fxml

També hi ha inclou exemples de llistes a partir de plantilles .fxml

La informació es llegeix a partir d'arxius .json ubicats a la carpeta 'assets'

### Compilació i funcionament ###

Cal el 'Maven' per compilar el projecte
```bash
mvn clean
mvn compile
mvn exec:java -Dexec.mainClass="com.project.Main" -q
```

Per executar el projecte a Windows cal
.\run.ps1 com.project.Main

Per executar el projecte a Linux/macOS cal
./run.sh com.project.Main

