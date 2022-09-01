var date = new Date();
console.log(('0'+date.getDate()).slice(-2)+"/"+('0'+(date.getMonth()+1)).slice(-2)+"/"+date.getFullYear());
document.write(('0'+date.getDate()).slice(-2)+"/"+('0'+(date.getMonth()+1)).slice(-2)+"/"+date.getFullYear());
document.write("<br/>");
newdate = (('0'+date.getDate()).slice(-2)+"/"+('0'+(date.getMonth()+1)).slice(-2)+"/"+date.getFullYear());
console.log(newdate);
document.write(newdate);
//newdate2 = (newdate);
//document.write(newdate2);
