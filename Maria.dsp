//GS - manca l'estensione .dsp

//la sintesi sottrattiva analizza un suono attraverso 3 strumenti: spettrogramma, sonogramma e forma d'onda
//GS - si chiama sintesi, va bene descrivere i metodi di analisi, ma poi dovevi descrivere la sintesi
//GS - sottrattiva, cosa che non hai fatto.

import("stdfaust.lib");
//order = fcut(2020000); //GS -l'order, non è l'ordine delle cose, tipo una lista. doveva essere una potenza di 2 <= di 128
//process = fi.lowpass (order 20) : fi.highpass (order 20000);

//GS - non hai fatto girare il codice? mancano le virgole dentro le parentesi!
//GS - non hai selezionato una banda, la frequenza di taglio doveva essere uguale per i due filtri

//GS - versione corretta
order = 32;
fcut = 5000;
process = fi.lowpass(order, fcut) : fi.highpass(order, fcut);

