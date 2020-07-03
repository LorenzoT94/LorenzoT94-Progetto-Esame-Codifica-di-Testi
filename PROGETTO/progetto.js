//funzione per visualizzare o nascondere un testo
function modificaVisibilità (idbutton) {
   nodoTesto = document.getElementById(testi[idbutton]);
   if (nodoTesto.style.display == 'none') {
      nodoTesto.style.display = 'block';
   } else {
      nodoTesto.style.display = 'none';
   }
}

//funzione per nascondere tutti i testi
function inizializza () {
   for (idbutton in testi) {
      modificaVisibilità (idbutton, "none");
   }
}

//funzione che parte quando si clicca su un bottone
function gestoreClick () {
   try {
      modificaVisibilità (this.id);
   } catch ( e ) {
      alert ("gestoreClick " + e);
   }
}

//array associativo (bottone - rispettivo testo)
var testi = {
    button1:"codificadelfronte",
    button2:"codificadelretro"
}

//variabili globali
var nodoTesto;
var nodobutton;
var idbutton;
var visibilità;
var testi;

function gestoreLoad () {
   try {
      for (idbutton in testi) {
         nodobutton = document.getElementById(idbutton);
         nodobutton.onclick = gestoreClick;
      }      
      inizializza (); 
   } catch ( e ) {
      alert ("gestoreLoad " + e);
   }
}

window.onload = gestoreLoad;