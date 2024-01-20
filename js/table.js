function reisterform()
{

var regno=document.getElementById("freg").value;
console.log(regno);
var sno=document.getElementById("msno").value;
console.log(sno);
var dob=document.getElementById("mdob").value;
console.log(dob);

var username=document.getElementById("uname").value;
console.log(username);
var email=document.getElementById("hemail").value;
console.log(email);

var password=document.getElementById("pwd").value;
console.log(password);

var address=document.getElementById("faddes").value;
console.log(address);

document.getElementById("resgno").innerHTML=regno;
document.getElementById("snno").innerHTML=sno;
document.getElementById("dob").innerHTML=dob;
document.getElementById("usrname").innerHTML=username;
document.getElementById("emailid").innerHTML=email;
document.getElementById("pswd").innerHTML=password;
document.getElementById("address").innerHTML=address;
}