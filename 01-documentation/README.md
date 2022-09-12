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

Entitet Podaci_o_vozilu:                         Tabela vehicle_data:
-vrsta_vozila                                   -vehicle_data_id        INT UN  PK,AI
-marka_vozila                                   -type_of_vehicle	
-registarski_broj                               -vehicle_brand
-najveca_dozvoljena_masa                        -max_mass
-tezina_praznog_vozila                          -mass
-snaga_motora                                   -engine_power
-zapremina_motora                               -engine_dispacement
-boja_vozila                                    -vehicle_color
-broj_sasije                                    -vin    VC    17 UQ                                            
-datum_pocetka                                  -duration_of_insurance
-datum_isteka                                   -reason_for_filling
-razlog_popunjavanja                            -sum_insured
-suma_osiguranja                                -general_terms_and_conditionals
-opsti_uslovi                                                                                                     

...

## Uloge korisnika

**Zaposleni**
...