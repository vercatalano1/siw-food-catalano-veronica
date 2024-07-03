# siw-food-catalano-veronica
progetto siw-Food

# Casi D'uso 

## UTENTE OCCASIONALE
operazioni di lettura:
- visualizzazione di tutti i cuochi con il relativo profilo
- visualizzazione tutte le ricette con i relativi ingredienti e il cuoco che l'ha proposta
- visualizzazione di una ricetta mediante ricerca


## UTENTE REGISTRATO (o cuoco)
operazioni di lettura:
- tutte le operazioni di lettura dell'utente occasionale

operazioni di aggiornamento:
- modifica i suoi dati e la foto profilo
- aggiornamento delle sue ricette: può aggiungere, cancellare gli ingredienti e modificare le loro quantità.


operazioni di inserimento:
- aggiunta di una ricetta specificando il nome, la descrizione, il procedimento, l'immagine e selezionando gli ingredienti con le relative quantità
- aggiunta di un ingrediente specificando il nome

operazioni di cancellazione:
- cancellazione delle sue ricette



## UTENTE CON IL RUOLO DI ADMIN
operazioni di lettura:
- tutte le operazioni di lettura dell'utente occasionale

operazioni di aggiornamento:
- aggiornamento delle ricette: può selezionare il cuoco che ha proposto la ricetta (se non è specificato), può aggiungere, cancellare gli ingredienti e modificare le loro quantità.

operazioni di inserimento:
- aggiunta di un ingrediente specificando il nome
- aggiunta di un cuoco specificando il nome, il cognome, la mail, la data di nascita ed un'immagine opzionale
- aggiunta di una ricetta specificando il nome, la descrizione, il procedimento, l'immagine, selezionando gli ingredienti con le relative quantità e il cuoco che la propone.

operazioni di cancellazione:
- cancellazione degli ingredienti
- cancellazione dei cuochi, senza poter eliminare se stesso
- cancellazione delle ricette
