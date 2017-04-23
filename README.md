# display_loader
*script per switchare da LCD ad HDMI*

### Intro
**Display Loader** è una *raccolta di script e configurazioni* che consente di passare automaticamente dall'output HDMI ad LCD (e viceversa) su un Raspberry Pi 3 dotato di un display LCD collegato sui PIN GPIO. Per maggiori dettagli sul funzionamento generale rimando al *tutorial* pubblicato sul mio blog (https://geekonerd.blogspot.it/2017/04/tutorial-come-creare-una-game-console-casalinga-e-portatile-con-il-raspberry-pi-3.html).

#### Contenuto
Sono compresi:
- lo script di inizializzazione dell'output
- il file rc.local per l'avvio automatico dello script e del tool fbcp
- le configurazioni per il display Kuman da 3.5" da me utilizzato per il tutorial

###### Nota bene
Il codice presente in questo repository funziona su un Raspberry Pi 3 configurato come specificato nel tutorial. Nella versione attuale, si tratta di una *beta* che ha alcuni limiti di funzionamento descritti sul blog.
