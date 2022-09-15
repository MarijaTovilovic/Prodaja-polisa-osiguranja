# Veb aplikacija za osiguravajucu kucu za prodaju polisa osiguranja

 Ovo je projekat za ispit iz predmeta Praktikum - Internet i veb tehnologije.

 Broj indeksa: 2020204504

 Ime i prezime: Marija Tovilović

 Školska godina: 2021/2022

 ## Projektni zahtev
 Aplikacija treba da omogući zaposlenom u osiguravajućem društvu da se prijavi na sistem sa svojim korisničkim imenom i lozinkom da bi mogao da koristi aplikaciju. Korisnici koji nisu prijavljeni ne mogu da pristupe ni jednoj drugoj opciji aplikacije, osim opciji za prijavu na portal. Zaposleni može da pregleda spisak korisnika usluga osiguranja, da evidentira novog osiguranika i da izmeni postojećeg. Zaposleni može da kreira novu polisu osiguranja. Aplikacija treba da podržava pet vrsta polisa osiguranja i svaka treba da ima svoje posebne karakteristike, tj. specifikacije i način na koji se formira. Primeri vrsta osiguranja koje treba implementirati su osiguranje od auto-odgovornosti, osiguranje nepokretne imovine od požara, putno osiguranje, osiguranje od posledica nesrećnog slučaja i osiguranje useva i plodova. Prilikom kreiranja polise osiguranja, zaposleni bira iz liste osiguranika. Osiguranik je lice koje mora prvo da bude upisano u bazu podataka. Ukoliko već postoji u bazi podataka, ne može da bude kreiran ponovo. Za proveru postojanja koristiti JMBG kao jedinstveni ključ. Zavisno od vrste osiguranja koje se kreira, zaposleni mora da navede različite setove podataka o predmetu osiguranja. U slučaju osiguranja od auto-odgovornosti, treba uneti podatke o vozilu. Kada je u pitanju osiguranje nepokretne imovine, treba uneti podatke kao što su adresa, površina nepokretnosti, datum izgradnje, procena rizika koju je dostavio veštak itd. U slučaju putnog osiguranja, treba definisati tranzitne države u kojima važi osiguranje u tranzitu i državu boravka u kojoj važi osiguranje po drugim uslovima. U slučaju osiguranja useva i plodova, treba da navede da li su usevi pod subvencijama države. Ako jesu, iz kojeg programa (naziv), a ako nisu, koji su izvori finansiranja poljoprivrednog društva ili zadruge. Sve polise moraju da imaju definisane datume početka i isteka važenja polise, nominalnog iznosa osiguranja, kao i koji uslovi važe. Prilikom kreiranja polise, aplikacija treba da nudi opciju da generiše tekst polise osiguranja koji treba da se odštampa i overi, npr. plavi list za osiguranje od auto-odgovornosti. Grafički interfejs mora da bude realizovan sa responsive dizajnom.

 ## Tehnička ograničenja
 - Aplikacija mora da bude realizovana na Node.js platformi korišćenjem Express biblioteke. Aplikacija mora da bude podeljena u dve nezavisne celine: back-end veb servis (API) i front-end (GUI aplikacija). Sav kôd aplikacije treba da bude organizovan u jednom Git spremištu u okviru korisničkog naloga za ovaj projekat, sa podelom kao u primeru zadatka sa vežbi.
- Baza podataka mora da bude relaciona i treba koristiti MySQL ili MariaDB sistem za upravljanje bazama podataka (RDBMS) i u spremištu back-end dela aplikacije mora da bude dostupan SQL dump strukture baze podataka, eventualno sa inicijalnim podacima, potrebnim za demonstraciju rada projekta.
- Back-end i front-end delovi projekta moraju da budi pisani na TypeScript jeziku, prevedeni TypeScript prevodiocem na adekvatan JavaScript. Back-end deo aplikacije, preveden na JavaScript iz izvornog TypeScript koda se pokreće kao Node.js aplikacija, a front-end deo se statički servira sa rute statičkih resursa back-end dela aplikacije i izvršava se na strani klijenta. Za postupak provere identiteta korisnika koji upućuje zahteve back-end delu aplikacije može da se koristi mehanizam sesija ili JWT (JSON Web Tokena), po slobodnom izboru.
- Sav generisani HTML kôd koji proizvodi front-end deo aplikacije mora da bude 100% validan, tj. da prođe proveru W3C Validatorom (dopuštena su upozorenja - Warning, ali ne i greške - Error). Grafički korisnički interfejs se generiše na strani klijenta (client side rendering), korišćenjem React biblioteke, dok podatke doprema asinhrono iz back-end dela aplikacije (iz API-ja). Nije neophodno baviti se izradom posebnog dizajna grafičkog interfejsa aplikacije, već je moguće koristiti CSS biblioteke kao što je Bootstrap CSS biblioteka. Front-end deo aplikacije treba da bude realizovan tako da se prilagođava različitim veličinama ekrana (responsive design).
- Potrebno je obezbediti proveru podataka koji se od korisnika iz front-end dela upućuju back-end delu aplikacije. Moguća su tri sloja zaštite i to: (1) JavaScript validacija vrednosti na front-end-u; (2) Provera korišćenjem adekvatnih testova ili regularnih izraza na strani servera u back-end-u (moguće je i korišćenjem izričitih šema - Schema za validaciju ili drugim pristupima) i (3) provera na nivou baze podataka korišćenjem okidača nad samim tabelama baze podataka.
- Neophodno je napisati prateću projektnu dokumentaciju o izradi aplikacije koja sadrži (1) model baze podataka sa detaljnim opisom svih tabela, njihovih polja i relacija; (2) dijagram baze podataka; (3) dijagram organizacije delova sistema, gde se vidi veza između baze, back-end, front-end i korisnika sa opisom smera kretanja informacija; (4) popis svih aktivnosti koje su podržane kroz aplikaciju za sve uloge korisnika aplikacije prikazane u obliku Use-Case dijagrama; kao i (5) sve ostale elemente dokumentacije predviđene uputstvom za izradu dokumentacije po ISO standardu.
- Izrada oba dela aplikacije (projekata) i promene kodova datoteka tih projekata moraju da bude praćene korišćenjem alata za verziranje koda Git, a kompletan kôd aplikacije bude dostupan na javnom Git spremištu, npr. na besplatnim GitHub ili Bitbucket servisima, jedno spremište za back-end projekat i jedno za front-end projekat. Ne može ceo projekat da bude otpremljen u samo nekoliko masovnih Git commit-a, već mora da bude pokazano da je projekat realizovan u kontinuitetu, da su korišćene grane (branching), da je bilo paralelnog rada u više grana koje su spojene (merging) sa ili bez konflikata (conflict resolution).

## Entiteti i atributi

•	Zaposleni
-	korisničko ime,lozinka

•	Osiguranik
-	jmbg,ime,prezime,email,telefon

•	Adresa osiguranika
-	opština,broj pošte,mesto,ulica,broj

•	Polisa osiguranja
-	naziv

•	Vrsta osiguranja
-	PolisaAO,Osiguranje nepokretne imovine od požara,Putno osiguranje,Osiguranje od posledice nesrećnog slučaja,Osiguranje useva i plodova

•	PolisaAO
-	podaci o vozilu,datum početka,datum isteka,suma osiguranja,opšti uslovi

•	Osiguranje nepokretne imovine od požara
-	adresa,površina,datum izgradnje,procena rizika,datum početka,datum isteka,suma osiguranja,opšti uslovi

•	Putno osiguranje
-	destinacija,trajanje(datum početka,datum isteka),starosna grupa,vrsta putovanja(individualno,grupno..),svrha putovanja(turistički,poslovno,..),suma osiguranja,opšti uslovi

•	Osiguranje od posledice nesrećnog slučaja
-	trajanje(datum početka,datum isteka),vrsta pokrića)trajni invaliditet,smrt,troškovi lečenja),suma osiguranja,opšti uslovi

•	Osiguranje useva i plodova
-	vrsta rizika,vrsta useva(ratarski,povrtarski,voćarski,..),datum početka,datum isteka,suma osiguranja,opšti uslovi,izvori finansiranja

## Analiza projektnog zahteva

•	Zaposleni

-	Uređivanje osiguranika
-	Pregled spiska osiguranika
-	Kreiranje polise osiguranja
-	Unos podataka za određenu vrstu osiguranja
-	Izdavanje polise osiguranja
-	Pregled izdatih polisa


•	Korisnik

-	Prijava -> Zaposleni
Osiguranik (u aplikaciji nema nikakvu funkciju,osim u slučaju ako je ujedno i osiguranik,pa kreira i izdaje odgovarajuću polisu za sebe) 


## Baza podataka

....

## Use-Case dijagrami

....

## Prikaz konačnog spiska pojedinačnih aktivnosti

## Model baze podataka

Zaposleni:                    staff
-korisnicko ime                  staff_id        INT           UN         PK   AI
-lozinka                         username        VARCHAR       64         UQ 
				                 password_hash   VARCHAR       128
                                 created_at      TS                       CT
                                 is_active       TI            1          UN,D 1

 Za tabelu staff imamo primarni kljuc,njegovo korisnicko ime I lozinku,za lozinku uvek cuvamo password_hash,zatim cuvamo kada je nalog napravljen kao I informaciju da li je aktivan(po default-u jeste),jer ukoliko zaposleni dobije otkaz ili iz bilo kog drugog razloga prestane da radi da mozemo da deaktiviramo nalog.                                

Osiguranik:                  insured
-jmbg                             insured_id        INT           UN   PK AI                                   
-ime                              jmbg              VARCHAR       13
-prezime                          name              VARCHAR       128
-opstina                          surname           VARCHAR       128
-broj poste                       township          VARCHAR       64
-mesto                            post_number       VARCHAR       5
-ulica                            place             VARCHAR       255
-broj                             street_and_number VARCHAR       255
-broj_telefona                    phone_number      VARCHAR       24       NULL
-email                            email             VARCHAR       255  UQ  NULL

Za tabelu insured imamo primarni kljuc,i osnovne podatke koji su potrebni za izdavanje polise kao sto su jmbg(duzine 13 karaktera),ime,prezime,opstinu,broj poste,mesto,ulicu i broj,broj telefona i email,Broj telefona i email nisu obavezna polja,ona se popunjavaju u slucaju da osiguranik zeli da mu se salju obavestenja u vezi osiguranja(istek polise,popusti itd).

Polisa_osiguranja:          insurance_policy
-vrsta osiguranja                 insurance_policy_id      INT     UN      PK  AI
                                  type_of_insurance_id     INT     UN      FK
                                  insured_id               INT     UN      FK

Za tabelu insurance_policy imamo primarni kljuc,kao i strane kljuceve vrsta_osiguranja i osiguranik.Osiguranik moze imati vise polisa,na primer moze imati polisuAO(u kojoj moze biti vlasnik vise automobila,samim tim moze imati vise AO polisa),a moze imati i ostale cetiri polise koje su navedene u projektnom zadatku.

Vrsta osiguranja            type_of_insurance
-naziv                             type_of_insurance_id    INT       UN      PK  AI
                                   name                    VARCHAR   128     UQ

Za tabelu type_of insurance imamo primarni kljuc i naziv osiguranja.

PolisaAO                    policyAO
-podaci_o_osiguraniku		     policyAO_id         INT      UN     PK   AI
-podaci_o_vozilu                 date_of_issue       TIMESTAMP
-datum_izdavanja                 insured_id          INT      UN     FK
						         vehicle_data_id     INT      UN     FK
                                 

Za tabelu policyAO imamo primarni kljuc,podatke o vozilu i osiguraniku kao strane kljuceve i datum izdavanja polise(koji ne moze biti veci od 30 dana od datuma prethodne polise,ukoliko je rec o produzenje polise).

 Podaci_o_vozilu:            vehicle_data:
-vrsta_vozila                    vehicle_data_id        INT        UN  PK  AI
-marka_vozila                    type_of_vehicle	    VARCHAR 
-registarski_broj                vehicle_brand          VARCHAR  
-najveca_dozvoljena_masa         registration_number    VARCHAR    24  UQ1             
-tezina_praznog_vozila           max_mass               VARCHAR    16
-snaga_motora                    mass                   VARCHAR    16
-zapremina_motora                engine_dispacement     SMALLINT
-boja_vozila                     engine_power           SMALLINT
-datum_pocetka                   vehicle_color          VARCHAR    64
-broj_sasije                     vin                    VARCHAR    17  UQ1
-datum_pocetka                   duration_of_insurance  DATE
-datum isteka                    reason_for_filling     VARCHAR            
-razlog_popunjavanja             sum_insured            DECIMAL    10,2       
-suma_osiguranja                 general_terms_and_conditional    MEMO           
-opsti uslovi                          
                              
                                                                                                     
Za tabelu vehicle_data imamo primarni kljuc,marku vozila,registarski broj(ne mozemo imati dva vozila sa istim registarskim brojem),ukupnu masu vozila,masu vozila,snagu i zapreminu motora,broj sasije koji je 17 karaktera(ne mozemo imati dva vozila sa istim brojem sasije),boju,trajanje registracije,razlog popunjavanja(da li je u pitanju prva registracija ili produzenje registracije),suma osiguranja i opsti uslovi.
...

## Uloge korisnika

**Zaposleni**
...