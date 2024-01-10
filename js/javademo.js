


// to use console check the below line
console.log(" welcome to javascript");
console.log(10);
console.log(10.10);
console.log({fname : "jemi" ,gender : "female"});
console.log([5,10,12,15]);
console.table([5,10,20,15]);
console.log(true);
console.log(15);
//print in console with variable declaration
var a=2;
var b=3;
const c=10;
console.log(a);
console.log(b);
console.log(c);
a="jemi";
b="address";
console.log(a);
console.log(b);
var a=25;
console.log(a);
a =({fname:"jemi",gender:"female"});
console.log(a);
console.table(a);
a=[2,7,56,15,67];
console.log(a);
console.table(a);
b=[23,45,46,67,78,87,34,12,90];
console.log(b);
console.table(b);
// to know what type of values given
a=2;
console.log(typeof a);
a=1.3;
console.log(typeof a);
a="jemi";
console.log(typeof a);
a=0.5;
console.log(typeof a);
console.table({fname:"jemi",gender:"female"});
var a;
a= console.table({fname:"jemi",gender:"female"});
console.log(a);
a= 15;
console.log(a);
console.table(a);
console.log(typeof a);
var a=10;
var b=15;
console.log(a);
console.log(b);
// operators in javascript
let v1=10;
let v2=35;
console.log(v1+v2);
console.log(v1-v2);
console.log(v1*v2);
console.log(v1%v2);
console.log(v1**v2);
console.log(v1^v2);
console.log(v1>v2);
console.log(v1<v2);
console.log(v1==v2);
console.log(v1=v2);
console.log(v1**v2);
console.log(v1&v2);
// increment
v1=++v1;
console.log(v1);
v2=++v2;
console.log(v2);
++v1;
console.log(v1);
++v2;
console.log(v2);
//decrement
v1=--v1;
console.log(v1);
v2=--v2;
console.log(v2);
--v1;
console.log(v1);
--v2;
console.log(v2);
//comparision
v1==v2;
console.log(v1);
v2==v1;
console.log(v2);
// arithmatic operators
(v1==v2)&&(v1==v2);
console.log(v1);
(v1==v2)||(v1==v2);
console.log(v1);
console.log(v2);
(v1==v2);
console.log(v1);
a=5;
b=7;
console.log(a);


console.log(v1);
var output=v1=="s"?"v1 has value":"v1 doesnot have value";
console.log(output); 

m=80;
//input
// 35 grade c 60 grade b 80 grade a 90 grade distintion
var mark =(35<=m && m<=60)?"grade c":(60<=m && m<=80)?"grade b":(80<=m && m<=90)?"grade a":(90<=m && m<=100)?"grade distintion":"fail";
console.log(mark);
//output


//function declaration
findgrade()
function findgrade(m,k){
//input
// 35 grade c 60 grade b 80 grade a 90 grade distintion
var mark =(35<=m && m<=60)?"grade c":(60<=m && m<=80)?"grade b":(80<=m && m<=90)?"grade a":(90<=m && m<=100)?"grade distintion":"fail";
console.log(mark);
//output
}
findgrade(65,"1cm");

var findgrade=()=>
{
console.log("under process");
}
console.log(findgrade(36,"ram"));

function findgrade()
{
console.log("welcome");
console.log("jemi");
}

var checkgrade=(a,b)=>
{
    //console.log(a+b);
    return a+b;
}

checkgrade();
console.log("added value",checkgrade(1,2)); 
var printmsg =(checkgrade(1,2));
console.log(printmsg);
var checkgrade2 =(a,b)=> a+b;
console.log(checkgrade2(5,28));
var checkgrade2=()=> 
checkgrade();
console.log(checkgrade2);

//condition statement
// if condition
function gradecheck(m){
    if(35<=m && m!=null)
    {
    console.log("no grade");
    console.log("fail");
}
}
gradechecking(45);



// if else condition
function gradecheck(m){
    if(35<=m && m!=null)
{
    console.log("no grade");
    console.log("fail");
}
else{
console.log("pass");
console.log("other grade");
}
}
gradechecking(55);


// nested if else condition
function gradechecking()
{
if(35<=m && m!=null)
    {
        console.log("no grade");
        console.log("fail");
    }
    else {
        if(35<=m && m!=null && m<=60)
    {
        console.log("pass");
        console.log("grade c");
    }
    else if(45<=m && m!=null && m<=80)
    {
        console.log("pass");
        console.log("grade b");
    }
    else if(30<=m && m!=null && m<=100)
    {
    console.log("pass");
    console.log("grade a");
    }
    else{
    gradechecking(("enter mark"));
    }
}
}
gradechecking(99);


//switch condition statement

function checkingwithswitch(a)
{
    console.log(a);
    switch(a){
    case 's':
        //statement 
        console.log("execute case s",typeof a);
        break;
    case 'h':
        //statement
        console.log("execute case h",typeof a);
        break;
    case 'f':
        //statement
        console.log("execute case f",typeof f);
        break;
    default:
        //statement
        alert("cases not in list");
    }
    }    
    checkingwithswitch(prompt("Enter the condition value"));
    

    //increment operator

    var a=2;
    var x=a++;
    console.log(a);

    var a=2;
    var x=a++;
    console.log('increment with assignment',x);
    console.log('increment with assignment',a);
    console.log(x+a);  

var a=3;
var x=++a;
console.log('prefix increment with assignment',a);

var a=3;
var x=++a;
console.log('prefix increment with assignment',x);
console.log('prefix increment with assignment',a);   
console.log(x+a);
//decrement 
 var a=2;
 var x=a--;
 console.log(a);

var a=5;
var x=a--;
console.log('increment with assignment',x);
console.log('increment with assignment',a);
console.log(x-a);

var a=2;
var x=--a;
console.log('prefix increment with assignment',a);

var a=5;
var x=--a;
console.log('prefix increment with assignment',x);
console.log('prefix increment with assignment',a);















