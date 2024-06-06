downloaded from 
http://digilander.iol.it/ddanijel/
http://yuelektro.cjb.net


"AllPic programator" 
za microchip mikrokontrolere u 8,18,28 i 40-pinskom pakovanju 
ukljucujuci i eeprome serije 24cXX.
Razlicitost u odnosu na vec postojece programatore je u tome sto
"AllPic prog" ima predvidjenu podrsku za programiranje nove serije
mikrokontrolera sa ugradjenim internim oscilatorom (12f6XX ,16F62X,...)

Kod starih modela programatora (Pony, Jdm,...) javlja se problem ako je
potrebno reprogramirati pic koji je predhodno programiran sa ukljucenim
"int/rc" i ukljucenim internim mclr. U tom slucaju pony programator ne
moze ni da obrise pic jer nije ispostovana procedura preporucena od
strane microchipa koja se odnosi na to da se vdd +5v napon sme pojaviti 
tek nakon uspostave mclr +13v programskog napona. Jedino sa ovakvim 
sistemom je moguce da pic udje u programski mod i da se ponovno 
reprogramira. Sve navedene osobine poseduje AllPic. Medjutim stari modeli 
piceva koji nemaju int.oscilator zahtevaju obrnut proces od gore navedenog 
tj. prvo vdd pa tek zatim mclr napon i za takve pic kontrolere je ubacena
podrska u vidu dzampera JP1 kojim se bira mod rada "vdd mode select" 

**Led1** indikuje prisutan napon napajanja za programator i on treba da bude
u opsegu 14-16v.
 
**Led2** indikuje prisutan Vdd +5v napon na chipu koji
se programira. 

**JP1** Ukoliko je JP1 spojen vdd +5v napon ce biti stalno
prisutan sto ce se i videti upaljenom led2. Ovaj mod je za sve microchipove
mikrokontrolere koji nemaju interni oscilator (16F84, 16F87x,) kao i eeprome.

 Za sve nove mcu potrebno je skinuti JP1 i u tom modu vdd +5v se pojavljuje 
tek po uspostavi 13v programskog napona na pocetku programiranja. 
(16F627,16F628,12F629,12F675...)

**JP2** Sluzi za izabir write protect moda za eeprome 24cXX 

**con1** externi prikljucak za in-circuit programiranje

Programator nije predvidjen za 16c5x seriju i jos neke specificne 
microchipove mcu.

Pitanja ,sugestije:
ddanijel@libero.it

 