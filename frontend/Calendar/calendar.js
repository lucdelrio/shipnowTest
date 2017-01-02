window.onload = function(){

    calendar();
}

function calendar(){
    Date.prototype.monthDays= function(){
      var d= new Date(this.getFullYear(), this.getMonth()+1, 0);
      return d.getDate();
    }
    date = new Date();
    currentDate(date);
    days = date.monthDays();
    daysName = ['D','L','M','X','J','V','S'];
    firstDay = startAt(date);

    firstLine(daysName);
    writeCalendar(date,firstDay,days);
}

function firstLine(daysName){
    for (i=0;i<daysName.length;i++) {
        celda0=document.getElementsByTagName("th")[i];
        celda0.innerHTML=daysName[i];
    }
}

function monthDate(month){
  switch (month){
    case 0:return 'Enero';break;
    case 1:return 'Febrero';break;
    case 2:return 'Marzo';break;
    case 3:return 'Abril';break;
    case 4:return 'Mayo';break;
    case 5:return 'Junio';break;
    case 6:return 'Julio';break;
    case 7:return 'Agosto';break;
    case 8:return 'Septiembre';break;
    case 9:return 'Octubre';break;
    case 10:return 'Noviembre';break;
    case 11:return 'Diciembre';break;
  }
}

function currentDate(date){
  var year = date.getFullYear();
  var month = monthDate(date.getMonth());
  var msg = month+', '+year;
  document.getElementById("currentDate").innerHTML = msg;
}

function startAt(date){
  date2 = new Date(date.getFullYear(),date.getMonth(),3);
  var firstDay = date2.getDay();
  return firstDay;
}

function writeCalendar(date,firstDay,days){
  var tds = document.getElementsByTagName('td');
  var counter = 1;
  //Walk across the table and complete with the dates
  for (var i=0;i<tds.length;i++){

    if (i>7 && firstDay!=0){
      tds[i].innerHTML = ' ' ;
      firstDay--;
    }
    else if (i>7 && firstDay==0 && counter<=days){

      tds[i].innerHTML=counter;
      //Put a color to the current day
      if (date.getDate() == counter){
        tds[i].style="background-color:lightblue;"
        tds[i].style.color = 'white';
      }
      counter++;
    }
  }
}

function previousmonth() {
  Date.prototype.monthDays= function(){
    var d= new Date(this.getFullYear(), this.getMonth(), 0);
    return d.getDate();
  }
  firstday--;
  newmonth = new Date();
  newmonth.setTime(firstday);

  currentDate(newmonth);
  days = newmonth.monthDays();
  firstDay = startAt(newmonth);

  writeCalendar(newmonth,firstDay,days);
}
