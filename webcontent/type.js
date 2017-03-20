
var states = new Array();

states['Two Wheeler'] = new Array('HONDA','TVS','MAHINDRA','BAJAJ');
states['Four Wheeler'] = new Array('HONDA','TOYOTA','HYUNDAI','MAHINDRA','CHEVROLET','SKODA','VOLKS WAGEN');



// City lists
var cities = new Array();

cities['Two Wheeler'] = new Array();
cities['Two Wheeler']['HONDA']          = new Array('Splendar','Splendar plus','Passion Plus','Activa');
cities['Two Wheeler']['TVS'] = new Array('Victor GLX','Sport','Apache','XL Super','Heavy Duty','Scooty pep');
cities['Two Wheeler']['MAHINDRA']          = new Array('Duro');
cities['Two Wheeler']['BAJAJ']          = new Array('Pulsar','Discover','Boxer');

cities['Four Wheeler'] = new Array();
cities['Four Wheeler']['HONDA'] = new Array('Accord','City','Amaze');
cities['Four Wheeler']['TOYOTA']       = new Array('Etios');
cities['Four Wheeler']['HYUNDAI']         = new Array('Venture','Accent');
cities['Four Wheeler']['MAHINDRA']         = new Array('Scorpio','XUV');
cities['Four Wheeler']['CHEVROLET']         = new Array('TAVERA','Spark');
cities['Four Wheeler']['SKODA']         = new Array('Fabia');
cities['Four Wheeler']['VOLKS WAGEN']         = new Array('Punto');



function setStates() {
  cntrySel = document.getElementById('type');
  stateList = states[cntrySel.value];
  changeSelect('manufacturer', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('type');
  stateSel = document.getElementById('manufacturer');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('model', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}


function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  
}

addLoadEvent(function() {
  setStates();
});