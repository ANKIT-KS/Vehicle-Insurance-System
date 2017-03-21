
var states1 = new Array();

states1['Two Wheeler'] = new Array('HONDA','TVS','MAHINDRA','BAJAJ');
states1['Four Wheeler'] = new Array('HONDA','TOYOTA','HYUNDAI','MAHINDRA','CHEVROLET','SKODA','VOLKS WAGEN');



// City lists
var cities1 = new Array();

cities1['Two Wheeler'] = new Array();
cities1['Two Wheeler']['HONDA']          = new Array('Splendar','Splendar plus','Passion Plus','Activa');
cities1['Two Wheeler']['TVS'] = new Array('Victor GLX','Sport','Apache','XL Super','Heavy Duty','Scooty pep');
cities1['Two Wheeler']['MAHINDRA']          = new Array('Duro');
cities1['Two Wheeler']['BAJAJ']          = new Array('Pulsar','Discover','Boxer');

cities1['Four Wheeler'] = new Array();
cities1['Four Wheeler']['HONDA'] = new Array('Accord','City','Amaze');
cities1['Four Wheeler']['TOYOTA']       = new Array('Etios');
cities1['Four Wheeler']['HYUNDAI']         = new Array('Venture','Accent');
cities1['Four Wheeler']['MAHINDRA']         = new Array('Scorpio','XUV');
cities1['Four Wheeler']['CHEVROLET']         = new Array('TAVERA','Spark');
cities1['Four Wheeler']['SKODA']         = new Array('Fabia');
cities1['Four Wheeler']['VOLKS WAGEN']         = new Array('Punto');





var states = new Array();

states['India '] = new Array('Andhra Pradesh ','Arunachal Pradesh ','Assam ','Bihar ','Chhattisgarh ','Goa ','Gujarat ','Haryana ','Himachal Pradesh ','Jammu and Kashmir ',
		'Jharkhand ','Karnataka ','Kerala ','Madhya Pradesh ','Maharashtra ','Manipur ','Meghalaya ','Mizoram ','Nagaland ','Odisha ','Punjab ',
		'Rajasthan ','Sikkim ','Tamil Nadu ','Telangana ','Tripura ','Uttar Pradesh ','Uttarakhand ','West Bengal ');





// City lists
var cities = new Array();
cities['India '] = new Array();
cities['India ']['Andhra Pradesh '] = new Array('Amaravati ');
cities['India ']['Arunachal Pradesh '] = new Array('Itanagar ');
cities['India ']['Assam '] = new Array('Guwahati ');
cities['India ']['Bihar '] = new Array('Patna ');
cities['India ']['Chhattisgarh '] = new Array('Raipur ');
cities['India ']['Goa '] = new Array('Panaji ');
cities['India ']['Gujarat '] = new Array('Gandhinagar ');
cities['India ']['Haryana '] = new Array('Chandigarh ');
cities['India ']['Himachal Pradesh '] = new Array('Shimla ');
cities['India ']['Jammu and Kashmir '] = new Array('Srinagar ','Jammu ');
cities['India ']['Jharkhand '] = new Array('Ranchi ');
cities['India ']['Karnataka '] = new Array('Bengaluru ');
cities['India ']['Kerala '] = new Array('Thiruvananthapuram ');

cities['India ']['Madhya Pradesh '] = new Array('Bhopal ');
cities['India ']['Maharashtra '] = new Array('Mumbai ');
cities['India ']['Manipur '] = new Array('Imphal ');
cities['India ']['Meghalaya '] = new Array('Shillong ');
cities['India ']['Mizoram '] = new Array('Aizawl ');
cities['India ']['Nagaland '] = new Array('Kohima ');
cities['India ']['Odisha '] = new Array('Bhubaneswar ');
cities['India ']['Punjab '] = new Array('Chandigarh ');

cities['India ']['Rajasthan '] = new Array('Jaipur ');
cities['India ']['Sikkim '] = new Array('Gangtok ');
cities['India ']['Tamil Nadu '] = new Array('Chennai ');
cities['India ']['Telangana '] = new Array('Hyderabad ');
cities['India ']['Tripura '] = new Array('Agartala ');
cities['India ']['Uttar Pradesh '] = new Array('Lucknow ');
cities['India ']['Uttarakhand '] = new Array('Dehradun ');
cities['India ']['West Bengal '] = new Array('Kolkata ');

function setStates() {
  //cntrySel = document.getElementById('country');
  stateList = states["India "];
  changeSelect('state', stateList, stateList);
  setCities();
}

function setCities() {
  //cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities["India "][stateSel.value];
  changeSelect('city', cityList, cityList);
}






function setManu() {
  cntrySel = document.getElementById('type');
  stateList = states1[cntrySel.value];
  changeSelect('manufacturer', stateList, stateList);
  setModel();
}

function setModel() {
  cntrySel = document.getElementById('type');
  stateSel = document.getElementById('manufacturer');
  cityList = cities1[cntrySel.value][stateSel.value];
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
  setManu();
  setStates();
});
