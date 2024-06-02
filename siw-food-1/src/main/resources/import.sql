insert into cuoco (id, nome, cognome, data, email) VALUES (nextval('cuoco_seq'), 'Max', 'Mariola', '11-04-1969', 'maxmariola@gmail.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Carlo', 'Cracco', '08-10-1965', ' carlocracco@gmial.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Antonia', 'Klugmann', '02-09-1979', 'antoniaklugmann@gmail.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Enrico', 'Bartolini', '24-11-1979', 'enricobartolini@gmail.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Bruno', 'Barbieri', '12-01-1962', 'brunobarbieri@gmail.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Nadia', 'Santini', '19-07-1964', 'nadiasantini@gmail.com');
insert into cuoco (id, nome, cognome, data, email) values(nextval('cuoco_seq'), 'Alex', 'Atala', '03-06-1968', 'alexatala@gmail.com');

insert into ricetta (id, nome, descrizione, cuoco_id) VALUES (nextval('ricetta_seq'), 'Zuppa di pomodorini con stracciatella e alici', 'Un’originale zuppa di pomodorini fresca arricchita con stracciatella e alici e insalata di cipolle in agrodolce che danno al piatto un sapore che non ti aspetti. Una zuppa diversa dal solito, che stuzzica le papille gustative attraverso sapori decisi e al tempo stesso freschi.', 1);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Risotto con acciughe, limone e cacao', 'Un piatto sorprendente che unisce sapori audaci: il risotto cremoso con acciughe sott’olio, limone fresco e un tocco di cacao puro. La pasta di acciughe dona un sapore intenso, mentre la scorza di limone aggiunge freschezza. Il cacao crea un contrasto inaspettato, rendendo questo piatto un’esperienza gustativa unica.', 51);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Guancia di maiale brasata alle susine', 'Un piatto succulento e ricco, la guancia di maiale brasata alle susine è un’esplosione di sapori. La carne di maiale, lentamente cotta nel vino Ramandolo, diventa tenera e avvolgente. Le susine aggiungono una dolcezza naturale, mentre le erbe aromatiche completano il piatto.', 101);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Cannolo di zafferano con formaggio di pecora e gremolada', 'Un connubio sorprendente tra ingredienti classici e creatività.: il cannolo di zafferano, farcito con formaggio di pecora d’alpeggio, è un’esplosione di sapori. La pasta sottile e croccante avvolge il formaggio cremoso, mentre la salsa gremolada, con aglio, prezzemolo e buccia di limone, completa l’esperienza gustativa.', 151);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Lasagnetta al gorgonzola dolce', 'La lasagnetta al gorgonzola dolce di Bruno Barbieri è come una sinfonia di sapori. La pasta sfoglia, sottile e delicata, avvolge il cuore cremoso del gorgonzola, che si scioglie lentamente al calore del forno. Ogni strato di pasta è un abbraccio di comfort, mentre il cavolfiore, tenero e leggermente croccante, aggiunge una nota di freschezza.', 201);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Terrina di astice con caviale Oscietra e zenzero marinato', 'Questa terrina è un inno alla tradizione e all’innovazione, un piatto che racchiude l’amore per gli ingredienti di alta qualità e la maestria culinaria della famiglia Santini. una terrina elegante e raffinata, composta da strati di astice fresco e caviale Oscietra Royal, il quale aggiunge una nota di lusso e intensità al piatto. L’astice, delicatamente marinato, si fonde con il caviale, creando un equilibrio tra sapori di mare e note terrose.', 251);
insert into ricetta (id, nome, descrizione, cuoco_id) values(nextval('ricetta_seq'), 'Capesante con latte di cocco, pepe aromatico e mango croccante', 'Il piatto è un equilibrio tra freschezza, calore e croccantezza. Capesante succulente e tenere avvolte in una veste cremosa e delicata, con una nota esotica e tropicale.Infine un tocco di pepe nero o rosa che aggiunge profondità e un leggero pizzico di piccantezza', 301);



insert into ingrediente (id, nome, quantità) VALUES (nextval('ingrediente_seq'),'Pomodorini ', '600');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Stracciatella', ' 200');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Alici', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 spicchio di aglio', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Basilico fresco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Olio extravergine di oliva', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Sale (quanto basta)', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Pepe', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Riso', '240');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Acciughe sott’olio','50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cacao puro', '50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Peperoncino', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Scalogno', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Scorza di limone', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1/2 bicchiere di vino bianco secco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Mascarpone', '50');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Burro', '45');

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'vino Ramandolo', '500');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '32 Susine', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Guancia di maiale', '8');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 cipolla', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 carota', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 gambo di sedano', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Farina00', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Zucchero', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Chiodi di garofano', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Rosmarino', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Timo', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Pepe in grani', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Acqua', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Zafferano', '1');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Formaggio di pecora d’alpeggio', '30');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Prezzemolo', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Sfoglia per lasagna', '180');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Gorgonzola', '120');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Cavolfiore', '100');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '3 noci di burro', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 cipollotto', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 rametto si salvia', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Paprica', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Curcuma', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Astice fresco', '600');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'Caviale Oscietra', '75');
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1-2 radici di zenzero marinato', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'succo di limone', null);

insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '8 pezzi di capesante fresche', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '400 ml di latte di cocco', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'pepe rosa', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '1 mango maturo', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), 'olio vegetale', null);
insert into ingrediente (id, nome, quantità) values(nextval('ingrediente_seq'), '2 cucchiai di zucchero di canna', null);



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
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2401, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2451, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (2501, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (301, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1601, 301);
INSERT INTO ricetta_ingredienti (ingredienti_id, ricette_id) VALUES (1401, 301);










