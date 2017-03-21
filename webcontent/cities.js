
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
  cntrySel = document.getElementById('country');
  stateList = states[cntrySel.value];
  changeSelect('state', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('city', cityList, cityList);
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