insert into cuoco (id, nome, cognome, data, email, image ) VALUES(nextval('cuoco_seq'), 'Max', 'Mariola', '11-04-1969', 'maxmariola@gmail.com', 'mariola.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Carlo', 'Cracco', '08-10-1965', ' carlocracco@gmail.com','cracco.png' );
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Antonia', 'Klugmann', '02-09-1979', 'antoniaklugmann@gmail.com','klugmann.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Enrico', 'Bartolini', '24-11-1979', 'enricobartolini@gmail.com','bartolini.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Bruno', 'Barbieri', '12-01-1962', 'brunobarbieri@gmail.com','barbieri.png');
insert into cuoco (id, nome, cognome, data, email, image ) values(nextval('cuoco_seq'), 'Nadia', 'Santini', '19-07-1964', 'nadiasantini@gmail.com','santini.png');

insert into ricetta (id, nome, descrizione, image, cuoco_id) VALUES(nextval('ricetta_seq'), 'Zuppa di pomodorini con stracciatella e alici', 'Un’originale zuppa di pomodorini fresca arricchita con stracciatella e alici e insalata di cipolle in agrodolce che danno al piatto un sapore che non ti aspetti. Una zuppa diversa dal solito, che stuzzica le papille gustative attraverso sapori decisi e al tempo stesso freschi.', 'zuppa.png', 1);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Risotto con acciughe, limone e cacao', 'Un piatto sorprendente che unisce sapori audaci: il risotto cremoso con acciughe sott’olio, limone fresco e un tocco di cacao puro. La pasta di acciughe dona un sapore intenso, mentre la scorza di limone aggiunge freschezza. Il cacao crea un contrasto inaspettato, rendendo questo piatto un’esperienza gustativa unica.','risotto.png', 51);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Guancia di maiale brasata alle susine', 'Un piatto succulento e ricco, la guancia di maiale brasata alle susine è un’esplosione di sapori. La carne di maiale, lentamente cotta nel vino Ramandolo, diventa tenera e avvolgente. Le susine aggiungono una dolcezza naturale, mentre le erbe aromatiche completano il piatto.','guancia.png', 101);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Cannolo di zafferano con formaggio di pecora e gremolada', 'Un connubio sorprendente tra ingredienti classici e creatività.: il cannolo di zafferano, farcito con formaggio di pecora d’alpeggio, è un’esplosione di sapori. La pasta sottile e croccante avvolge il formaggio cremoso, mentre la salsa gremolada, con aglio, prezzemolo e buccia di limone, completa l’esperienza gustativa.','cannolo.png', 151);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Lasagnetta al gorgonzola dolce', 'La lasagnetta al gorgonzola dolce di Bruno Barbieri è come una sinfonia di sapori. La pasta sfoglia, sottile e delicata, avvolge il cuore cremoso del gorgonzola, che si scioglie lentamente al calore del forno. Ogni strato di pasta è un abbraccio di comfort, mentre il cavolfiore, tenero e leggermente croccante, aggiunge una nota di freschezza.','lasagnetta.png', 201);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Terrina di astice con caviale Oscietra e zenzero marinato', 'Questa terrina è un inno alla tradizione e all’innovazione, un piatto che racchiude l’amore per gli ingredienti di alta qualità e la maestria culinaria della famiglia Santini. una terrina elegante e raffinata, composta da strati di astice fresco e caviale Oscietra Royal, il quale aggiunge una nota di lusso e intensità al piatto. L’astice, delicatamente marinato, si fonde con il caviale, creando un equilibrio tra sapori di mare e note terrose.', 'terrina.png', 251);
insert into ricetta (id, nome, descrizione, image, cuoco_id) VALUES(nextval('ricetta_seq'), 'Tartare cotta con burrata e alici', 'La tartare cotta con burrata e alici è un piatto che unisce sapori intensi e contrastanti in modo sorprendente. Preparata con cura e maestria, questa ricetta offre un''esperienza culinaria unica che conquista per la sua semplicità e raffinatezza.', 'tartare.png', 1);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Sfoglie di polenta croccante', 'Le sfoglie di polenta croccante sono un delizioso antipasto che unisce la consistenza croccante della polenta fritta con un cuore morbido e saporito.','polenta.png', 51);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Tuorlo marinato con fonduta', 'Il tuorlo marinato con fonduta è un piatto sofisticato che unisce la delicatezza del tuorlo d''uovo marinato alla cremosità della fonduta. Questo piatto crea un equilibrio perfetto tra la morbidezza dell''uovo e la cremosità del formaggio, regalando un''esperienza gastronomica raffinata e memorabile.','tuorlo.png', 51);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Spaghetti ai frutti rossi e acciughe', 'Gli spaghetti ai frutti rossi e acciughe rappresentano un connubio audace tra il dolce dei frutti rossi e il sapore salato delle acciughe, creando un piatto intrigante e gustoso. Le acciughe aggiungono profondità e un tocco salino alla salsa, mentre i frutti rossi, con la loro dolcezza naturale e un lieve accento acidulo, bilanciano il piatto.','spaghetti.png', 101);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Gnocchi di albicocche', 'Gli gnocchi di albicocche sono una deliziosa variante dei tradizionali gnocchi, preparati con albicocche mature e farina. Questo piatto offre un mix unico di dolcezza fruttata e consistenza delicata','gnocchi.png', 101);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Bloody beetroot', 'Questo piatto si distingue per l''elegante presentazione e per l''equilibrio tra i sapori dolci e terrosi della barbabietola, spesso accostata a ingredienti complementari che esaltano la sua naturale dolcezza ','bloody.png', 151);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Gambero mezzo fritto con salsa al tamarindo', '','gambero.png', 151);
insert into ricetta (id, nome, descrizione, image, cuoco_id) values(nextval('ricetta_seq'), 'Risotto con tarassaco e gorgonzola dolce', 'Il risotto con tarassaco e gorgonzola dolce è una fusione audace di sapori contrastanti, che eleva la semplicità degli ingredienti a un livello di raffinatezza.','risotto2.png', 201);

insert into ingrediente (id, nome, quantità) VALUES(nextval('ingrediente_seq'), 'Pomodorini ', '600');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Stracciatella', ' 200');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Alici', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Aglio', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Basilico fresco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Olio extravergine di oliva', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Sale', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Pepe macinato', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Riso', '240');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Acciughe','50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cacao puro', '50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Peperoncino', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Scalogno', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Scorza di limone', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Vino bianco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Mascarpone', '50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Burro', '45');

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Vino rosso', '500');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Susine', '32');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Guancia di maiale', '8');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cipolla', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Carota', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Sedano', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Farina 00', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Zucchero', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Chiodi di garofano', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Rosmarino', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Timo', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Pepe in grani', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Acqua', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Zafferano', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Formaggio di pecora', '30');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Prezzemolo', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Sfoglia per lasagna', '180');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Gorgonzola', '120');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cavolfiore', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Noci di burro', '3');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cipollotto', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Rametto si salvia', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Paprica', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Curcuma', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Astice', '600');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Caviale Oscietra', '75');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Radici di zenzero', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Succo di limone', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Carne di manzo', '400');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Burrata', '200');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Olive denocciolate', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Farina di mais', '250');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Parmigiano Reggiano', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Tuorli d''uovo', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Latte', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Panna fresca', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Spaghetti', '250');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Frutti rossi', '500');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Bacche di coriandolo', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cardamomo in polvere', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Patate', '450');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Albicocche', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Barbabietole', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Aceto balsamico', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Miele', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Yogurt greco', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Noci', '50');

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Gamberi', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Succo di tamarindo', '80');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Olio di semi', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Tarassaco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Peperone', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Pistacchi', null);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (51, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (101, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (151, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (201, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 1);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 1);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (401, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (451, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (501, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (551, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (601, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (651, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (701, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (751, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (801, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 51);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 51);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (851, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (901, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (951, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1001, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1051, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1101, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1151, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1201, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1251, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1301, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1351, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1401, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (801, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (151, 101);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 101);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1451, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1501, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1551, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1601, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (151, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1151, 151);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (651, 151);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1651, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1701, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1751, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1801, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1851, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1901, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1951, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2001, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 201);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (151, 201);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2051, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2101, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2151, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2201, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (801, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1351, 251);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1601, 251);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2251, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2301, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2351, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (100, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (151, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (551, 301);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2401, 351);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2451, 351);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 351);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1451, 351);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 351);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2501, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2551, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2601, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (801, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1151, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1201, 401);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2451, 401);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2651, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2701, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2751, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2801, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (451, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (651, 451);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2351, 451);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2851, 501);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2901, 501);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2501, 501);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1151, 501);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 501);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1201, 501);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2951, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3001, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3051, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3101, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3151, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1351, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1601, 551);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1551, 551);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3201, 601);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3251, 601);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3301, 601);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 601);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1201, 601);

INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3351, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3401, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (3451, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (401, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1001, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1701, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1301, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1901, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1801, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (251, 651);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (351, 651);