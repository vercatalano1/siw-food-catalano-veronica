insert into cuoco (id, nome, cognome, data, email, image ) VALUES(nextval('cuoco_seq'), 'Max', 'Mariola', '11-04-1969', 'maxmariola@gmail.com', 'mariola.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Carlo', 'Cracco', '08-10-1965', ' carlocracco@gmail.com','cracco.png' );
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Antonia', 'Klugmann', '02-09-1979', 'antoniaklugmann@gmail.com','klugmann.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Enrico', 'Bartolini', '24-11-1979', 'enricobartolini@gmail.com','bartolini.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Bruno', 'Barbieri', '12-01-1962', 'brunobarbieri@gmail.com','barbieri.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Nadia', 'Santini', '19-07-1964', 'nadiasantini@gmail.com','santini.png');

insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) VALUES(nextval('ricetta_seq'), 'Zuppa di pomodorini con stracciatella e alici', 'Un’originale zuppa di pomodorini fresca arricchita con stracciatella e alici e insalata di cipolle in agrodolce che danno al piatto un sapore che non ti aspetti. Una zuppa diversa dal solito, che stuzzica le papille gustative attraverso sapori decisi e al tempo stesso freschi.', 'zuppa.png', 1, 'Incidere i pomodorini rossi e porli in in un mixer insieme a uno spicchio d’aglio, del basilico, un pizzico di sale e un giro d’olio. Nel frattempo pulire la cipolla e tagliarla a spicchi. In una pentola fare cuocere la cipolla in acqua bollente. Appena è cotta, metterla in una ciotola di acqua fredda per fissare il colore e poi toglierla dall’acqua e condirla con l’olio d’oliva. Preparare dei crostini con del pane raffermo, quindi tagliarlo a fette e poi a dadini e farlo saltare in padella insieme a olio, aglio e pepe fino a doratura. Adesso riprendere il mixer e frullare i pomodorini, filtrare la zuppa in un colino e versare in un bel piatto. Disporre sopra i pomodorini di diverso tipo tagliati a pezzetti, mettere la burrata o stracciatella al centro, un giro d’olio e accompagnare con i crostini. Gustare il piatto in abbinamento ad un buon vino fresco!');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Risotto con acciughe, limone e cacao', 'Il risotto, caratterizzato da un accostamento di sapori apparentemente azzardato che mette insieme dolce, salato ed aspro, rappresenta un primo piatto eccezionale, da provare almeno una volta nella vita. Raffinato ed intrigante si tratta del primo che non ti aspetteresti ma che colpisce già al primo assaggio.','risotto.png', 51, 'Versare in un pentolino a bagnomaria la massa di cacao, farla fondere e stenderla su un foglio di carta da forno livellandola bene e cospargendola con il peperoncino e un pizzico di sale. Lasciarla asciugare (dovrà avere lo spessore di 1 millimetro) e ritagliarla in dischi. Nel frattempo tritare lo scalogno e grattugiare la scorza di limone. Fare sciogliere a fuoco basso, in un pentolino, le acciughe e in un altro fare soffriggere lo scalogno tritato insieme al burro; unire il riso e farlo tostare. Sfumare con il vino bianco, fare evaporare e continuare a cuocere aggiungendo circa 1/2 lt di acqua bollente poco salata. Regolare di sale e pepe.Togliere la pentola contenente il riso dalla fiamma e mantecare con il mascarpone. Prendere i piatti da portata e disporre sul fondo di ognuno la pasta di acciughe. Spolverare con la scorza del limone e versare sopra il risotto. Completare il piatto ponendo in superficie un disco di cioccolato');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Guancia di maiale brasata alle susine', 'Un piatto succulento e ricco, la guancia di maiale brasata alle susine è un’esplosione di sapori. La carne di maiale, lentamente cotta nel vino Ramandolo, diventa tenera e avvolgente. Le susine aggiungono una dolcezza naturale, mentre le erbe aromatiche completano il piatto.','guancia.png', 101, 'Affettare la cipolla a bastoncini sottili e stufarla in un’ampia casseruola con un velo di olio e lo spicchio di aglio. Fare sobbollire il vino sul fuoco dolce fino a ridurre il volume della metà. Aggiungerlo alla cipolla. Infarinare leggermente le guance di maiale e rosolarle in una padella di ferro o antiaderente con un filo di olio o un po’ di burro. Trasferire le guance rosolate nella casseruola con le cipolle. Aggiungere 2 chiodi garofano, la carota pelata, il sedano, 8 susine private del nocciolo, qualche grano di pepe, un po’ di rosmarino e di timo. Coprire con tanta acqua, quanta ne serve per sommergere le guance e la frutta. Cucinare coperto lentamente per circa 2 ore, fino a quando le guance non saranno morbide ma intere. Scolare le guance. Filtrare la salsa e farla raffreddare; sgrassarla e farla ridurre, se serve. Riscaldare le guance nella salsa poco prima di servire. Distribuire 24 susine private del nocciolo, ma lasciarle intere, in una teglia, aggiungere qualche fiocchetto di burro, un po’ di zucchero e sale e cuocerle in forno a 180 °C per 8-10 minuti');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Cannolo di zafferano con formaggio di pecora e gremolada', 'Un connubio sorprendente tra ingredienti classici e creatività: il cannolo di zafferano, farcito con formaggio di pecora d’alpeggio, è un’esplosione di sapori. La pasta sottile e croccante avvolge il formaggio cremoso, mentre la salsa gremolada, con aglio, prezzemolo e buccia di limone, completa l’esperienza gustativa.','cannolo.png', 151, 'Preparare un impasto diretto con acqua, zafferano, olio e farina. Lasciar riposare e stendere sottilmente. Tagliare in rettangoli di 10 cm circa di lunghezza e disporvi sopra il formaggio di pecora ammorbidito. Chiudere a cannolo e abbattere di temperatura. Friggere in olio caldo e servire con la salsa ottenuta con aglio, prezzemolo e buccia di limone');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Lasagnetta al gorgonzola dolce', 'La lasagnetta al gorgonzola dolce è come una sinfonia di sapori. La pasta sfoglia, sottile e delicata, avvolge il cuore cremoso del gorgonzola, che si scioglie lentamente al calore del forno. Ogni strato di pasta è un abbraccio di comfort, mentre il cavolfiore, tenero e leggermente croccante, aggiunge una nota di freschezza.','lasagnetta.png', 201, 'Bollire in una pentola il cavolfiore e successivamente passarlo in una padella con burro, aglio, salvia e sale. Mettere il gorgonzola in una pentola e farlo sciogliere a bagnomaria. Nel mentre bollire la pasta e asciugarla in seguito su un canovaccio. Mettere poi la pasta in degli stampi e farcirla a strati alternando gorgonzola e cavolfiore. Concludere con una noce di burro e chiudere con la parte di pasta rimasta fuori dagli stampi. Chiudere gli stampi con della carta stagnola e lasciarli in frigo almeno mezza giornata. Infornare la lasagnetta per circa 30 minuti. Nel mentre soffriggere il cipollotto, tagliato a pezzi grandi, in una padella con l’olio. Servire la lasagnetta in un piatto piano con alla base il cipollotto e guarnendo con dei pezzi di cavolfiore, dei ciuffettini di gorgonzola, paprica e curcuma');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Terrina di astice con caviale Oscietra e zenzero marinato', 'Questa terrina è un inno alla tradizione e all’innovazione, un piatto che racchiude l’amore per gli ingredienti di alta qualità e la maestria culinaria della famiglia Santini. Una terrina elegante e raffinata, composta da strati di astice fresco e caviale Oscietra Royal, il quale aggiunge una nota di lusso e intensità al piatto. L’astice, delicatamente marinato, si fonde con il caviale, creando un equilibrio tra sapori di mare e note terrose.', 'terrina.png', 251, 'Cuocere gli astici interi in acqua salata bollente per circa 8-10 minuti, fino a quando diventano rosati e completamente cotti. Tagliare la polpa di astice a pezzi più piccoli e tenerli da parte. Preparare il caviale e tenere da parte per la decorazione finale della terrina. Tagliare lo zenzero fresco a fettine sottilie e marinare lo zenzero in una miscela di succo di limone, olio d''oliva extravergine, e pepe macinato. Ungere uno stampo da terrina con burro fuso per facilitare lo sformaggio. Disporre uno strato uniforme di polpa di astice sul fondo dello stampo. Aggiungere uno strato di zenzero marinato e distribuire uniformemente il caviale Oscietra sopra. Continuare ad alternare strati di astice, zenzero e caviale fino a riempire lo stampo. Terminare con uno strato di caviale Oscietra per la decorazione finale. Mettere la terrina in frigorifero e lasciala raffreddare e rassodare per almeno 4-6 ore, preferibilmente durante la notte');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) VALUES(nextval('ricetta_seq'), 'Tartare cotta con burrata e alici', 'La tartare cotta con burrata e alici è un piatto che unisce sapori intensi e contrastanti in modo sorprendente. Preparata con cura e maestria, questa ricetta offre un''esperienza culinaria unica che conquista per la sua semplicità e raffinatezza.', 'tartare.png', 1, 'Sbriciolare in un mixer i grissini in modo grossolano in modo che si sentano sotto i denti. In una padella antiaderente mettere un giro d’olio e fare rosolare uno spicchio d’aglio grattugiato, aggiungere anche qualche alicetta e fare sciogliere bene nell’olio. Aggiungere anche i grissini sbriciolati, girare in modo che si insaporiscano bene e lasciarli da parte per dopo. Adesso prendere i pomodori e fare delle fettine da posizionare sul fondo del piatto, come base per la tartare, e condire con un pizzico di sale, qualche foglia di basilico, un filo d’olio e qualche olivetta. Prendere una parte magra e tagliare la carne controfibra in modo che sia più morbida da masticare. Continuare a tagliare in modo fine con un coltello ma non eccessivamente, in modo che si senta sotto i denti. Mettere la carne in una ciotola e condire con sale e fare una sorta di polpetta schiacciata con le mani, della grandezza che preferite. Scottare la polpetta in una padella con olio da entrambi i lati, poiché esternamente deve formare una bella crosticina. Posizionare la tartare estiva sui pomodori conditi, aggiungere del peperoncino tagliato a fettine, se vi piace, la burrata e una pioggia di grissini sbriciolati');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Sfoglie di polenta croccante', 'Le sfoglie di polenta croccante sono un delizioso antipasto che unisce la consistenza croccante della polenta fritta con un cuore morbido e saporito.','polenta.png', 51, 'Portare a bollore 750g di acqua con poco sale; versare la farina, mescolare con una frusta e cuocere secondo le indicazioni riportate sulla confezione senza smettere di mescolare. Ungere un foglio di carta da forno; distribuire sopra la polenta appena fatta, coprirla con un altro foglio unto e stenderla sottile con un matterello. Infornare la polenta tra i due fogli a 140‑160 °C per 1 ora e 20-30 minuti. Sfornare, eliminare la carta, spezzare le sfoglie di polenta e servirle come aperitivo, accompagnando a piacere con robiola, pezzetti di acini di uva e erbe, con pasta di olive, con burro morbido insaporito con acciughe');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Tuorlo marinato con fonduta', 'Il tuorlo marinato con fonduta è un piatto sofisticato che unisce la delicatezza del tuorlo d''uovo marinato alla cremosità della fonduta. Questo piatto crea un equilibrio perfetto tra la morbidezza dell''uovo e la cremosità del formaggio, regalando un''esperienza gastronomica raffinata e memorabile.','tuorlo.png', 51, 'Cuocere i fagioli in acqua abbondante non salata per 30 minuti circa. Quindi scolarli tenendo da parte un paio di mestoli dell’acqua di cottura; frullarli ottenendo un purè e fare raffreddare. Amalgamare il purè con il sale grosso e lo zucchero; se è troppo asciutto, unire un paio di cucchiai di acqua dei fagioli. Distribuire 1 cucchiaino di questo composto in 6 pirottini di alluminio (4-6 cm) o in 6 tazzine da caffè. Rompere le uova, uno alla volta, separando bene il tuorlo (senza romperlo) dall’albume; adagiare ciascun tuorlo in un pirottino, coprire con altro purè di fagioli e lasciare marinare per 7 ore a temperatura ambiente. Preparare la fonduta: portata a ebollizione la panna, spegnere, unire il parmigiano grattugiato e mescolare, ottenendo una crema liscia. Tostare il pangrattato in una padella con il burro per 3-4 minuti. Stendere il composto tra due fogli di carta da forno con un matterello, a circa 2 mm di spessore; fare indurire in freezer per 30 minuti. Poi eliminare la carta e ricavare 6 dischi con un tagliapasta (4-5 cm) o con un bicchiere. Distribuire i dischi nei piatti, posare 1 tuorlo su ciascuno, quindi versare la fonduta calda. Completare a piacere con broccoli e cipollotti tagliati sottili');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Spaghetti ai frutti rossi e acciughe', 'Gli spaghetti ai frutti rossi e acciughe rappresentano un connubio audace tra il dolce dei frutti rossi e il sapore salato delle acciughe, creando un piatto intrigante e gustoso. Le acciughe aggiungono profondità e un tocco salino alla salsa, mentre i frutti rossi, con la loro dolcezza naturale e un lieve accento acidulo, bilanciano il piatto.','spaghetti.png', 101, 'Estrarre il succo dai frutti rossi con un estrattore a caldo o a freddo oppure frullarli e passarli al setaccio. Infornare le olive con qualche bacca di coriandolo a 160 °C per una decina di minuti. Condirle poi con la scorza grattugiata di 1/4 di limone e un pizzico di cardamomo in polvere. Tagliare a listerelle 4 acciughe. Lessare gli spaghetti molto al dente in acqua bollente salata. Scaldare intanto in una padella ampia il succo dei frutti rossi con 2 acciughe tritate e un filo di olio. Unire gli spaghetti e finire di cuocerli. Mantecarli con un filo di olio; completarli con le listerelle di acciuga e le olive e servirli');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Gnocchi di albicocche', 'Gli gnocchi di albicocche sono una deliziosa variante dei tradizionali gnocchi, preparati con albicocche mature e farina. Questo piatto offre un mix unico di dolcezza fruttata e consistenza delicata','gnocchi.png', 101, 'Porre le patate, con la buccia, in una placca su un letto di sale e infornarle a 180 °C per 40 minuti circa. Pelarle e schiacciarle con lo schiacciapatate. Aggiungere i tuorli, la farina 00 e una presa di sale e mescolare con un cucchiaio per rendere l’impasto colloso. Stenderlo con il matterello in uno strato non troppo sottile. Ricavare 12 dischi e su ciascuno disporre 1/2 albicocca (con un po’ di zucchero di canna se fresca). Chiudere lo gnocco a palla. Lessare gli gnocchi in acqua salata e scolarli con una schiumarola. Servirli come contorno di un arrosto oppure da soli, come primo piatto, conditi con burro fuso e parmigiano o con ricotta salata grattugiata');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Bloody beetroot', 'Questo piatto si distingue per l''elegante presentazione e per l''equilibrio tra i sapori dolci e terrosi della barbabietola, spesso accostata a ingredienti complementari che esaltano la sua naturale dolcezza ','bloody.png', 151, 'Prepara un classico Bloody Mary utilizzando vodka, succo di pomodoro, succo di limone, salsa Worcestershire, salsa Tabasco, sale e pepe, secondo le proporzioni e gli ingredienti che preferisci. Affettare finemente la barbabietola, mettere le fette sottovuoto con il bloody mary e lasciar riposare per una notte. Servire le fette di rapa marinate accompagnate dal liquido di conservazione che avrà un bel colore rosso');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Gambero mezzo fritto con salsa al tamarindo', 'I gamberi vengono preparati in modo da mantenere la loro succosità interna mentre la parte esterna è croccante e dorata, conferendo una texture piacevole al morso. La salsa al tamarindo aggiunge un tocco esotico e agrodolce al piatto, bilanciando perfettamente il gusto delicato dei gamberi con la complessità della salsa. Questa combinazione di croccantezza e sapore intenso rende il piatto non solo appetitoso ma anche intrigante per il palato.','gambero.png', 151, 'Mescolare la polpa di tamarindo con lo zucchero ed il sale. Stenderla sul silpat (2 millimetri circa) ed abbatterla di temperatura a -18°C. Preparare il gambero eliminando la parte superiore del carapace della testa e la parte del carapace del dorso della coda, in questo modo resteranno solo le zampe,che vanno passate nella semola e fritte in olio caldo mantenendo il gambero crudo. Servire sulle “piastrine” di tamarindo che in precedenza vanno posizionate sul piatto caldo, fino al decongelamento');
insert into ricetta (id, nome, descrizione, image, cuoco_id, procedimento) values(nextval('ricetta_seq'), 'Risotto con tarassaco e gorgonzola dolce', 'Il risotto con tarassaco e gorgonzola dolce è una fusione audace di sapori contrastanti, che eleva la semplicità degli ingredienti a un livello di raffinatezza.','risotto2.png', 201, 'Tostare il riso in una pentola assieme al burro. Nel mentre, in una padella con olio, far rosolare la cipolla tritata. Quando il riso sarà dorato iniziare ad aggiungere piano piano il brodo continuando a mescolare. Una volta rosolata la cipolla, aggiungerla al riso. Mettere in seguito anche le foglie di tarassaco (tagliate grossolanamente), rosmarino e salvia. Una volta pulita la radice del tarassaco aggiungerla al brodo. Dopo aver cotto il riso per 5/6 minuti, aggiungere 1 cucchiaio di gorgonzola e continuare a mantecare aggiungendo di volta in volta il brodo. Aggiungere anche l’alloro e il secondo cucchiaio di gorgonzola. Una volta cotto il riso aggiungere (fuori fuoco) una noce di burro ghiacciata. Impiattare il risotto e guarnire con una cucchiaiata di gorgonzola, del peperone crusco sbriciolato, i pistacchi e due foglie di salvia');

insert into ingrediente (id, nome) VALUES(nextval('ingrediente_seq'), 'Pomodorini ');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Stracciatella');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Alici');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Aglio');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Basilico fresco');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Olio extravergine di oliva');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Sale');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Pepe macinato');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Riso');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Acciughe');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Cacao puro');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Peperoncino');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Scalogno');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Scorza di limone');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Vino bianco');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Mascarpone');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Burro');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Vino rosso');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Susine');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Guancia di maiale');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Cipolla');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Carota');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Sedano');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Farina 00');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Zucchero');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Chiodi di garofano');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Rosmarino');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Timo');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Pepe in grani');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Acqua');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Zafferano');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Formaggio di pecora');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Prezzemolo');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Sfoglia per lasagna');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Gorgonzola');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Cavolfiore');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Noci di burro');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Cipollotto');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Rametto si salvia');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Paprica');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Curcuma');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Astice');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Caviale Oscietra');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Radici di zenzero');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Succo di limone');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Carne di manzo');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Burrata');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Olive denocciolate');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Farina di mais');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Parmigiano Reggiano');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Tuorli d''uovo');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Pangrattato');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Panna fresca');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Spaghetti');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Frutti rossi');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Bacche di coriandolo');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Cardamomo in polvere');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Patate');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Albicocche');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Barbabietola');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Vodka');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Lime');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Tabasco');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Worchester');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Gamberi');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Polpa di tamarindo');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Olio di semi');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Tarassaco');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Peperone');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Pistacchi');

insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Pane');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Grissini');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Fagioli');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Wasabi');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Alloro');
insert into ingrediente (id, nome) values(nextval('ingrediente_seq'), 'Brodo vegetale');


INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '600',1, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '200', 51, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 101, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 201, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1001, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 551, 1);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3501, 1);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '240', 401, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '50', 451, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '50', 501, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 551, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 601, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 651, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 701, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '5', 751, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '45', 801, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 51);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 51);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '500', 851, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '32', 901, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '50', 951, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '5', 1001, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '5', 1051, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1101, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1151, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1201, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1251, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1301, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1351, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1401, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 801, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 151, 101);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 101);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 1451, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 1501, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '30', 1551, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1601, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 301, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '30', 251, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 151, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '250', 1151, 151);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 651, 151);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '180', 1651, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '120', 1701, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 1751, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '3', 1801, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 1851, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1901, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1951, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 2001, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 201);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 151, 201);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '600', 2051, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '75', 2101, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 2151, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 2201, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 801, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1351, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1601, 251);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 251);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '400', 2251, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '200', 2301, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 2351, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '10', 1, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '6', 101, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 151, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 551, 301);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3551, 301);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '250', 2401, 351);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 351);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1451, 351);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 351);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '6', 2501, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 2551, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '300', 2601, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '125', 301, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 801, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '45', 1201, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '250', 2451, 401);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '30', 3601, 401);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '250', 2651, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '500', 2701, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 2751, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 2801, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '6', 451, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 651, 451);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '50', 2351, 451);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '450', 2851, 501);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '6', 2901, 501);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '2', 2501, 501);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 1151, 501);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 501);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1201, 501);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 2951, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '30', 3001, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3051, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3101, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3151, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3651, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 1, 551);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 551);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '8', 3201, 601);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '80', 3251, 601);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3301, 601);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '3', 301, 601);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '15', 1201, 601);

INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3351, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3401, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3451, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '100', 401, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '1', 1001, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '4', 1701, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1301, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), '2', 1901, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 1801, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 301, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 251, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 351, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3751, 651);
INSERT INTO ricetta_ingrediente (id, quantità, ingrediente_id, ricetta_id) VALUES (nextval('ricetta_ingrediente_seq'), null, 3701, 651);