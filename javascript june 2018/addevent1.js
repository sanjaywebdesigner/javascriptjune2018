window.addEventListener("load",myfunction);
function myfunction(){
	a=document.querySelectorAll("#ss input");
    a[2].addEventListener("click",add); 
	a[3].addEventListener("click",subtract);
	a[4].addEventListener("click",multi);
	a[5].addEventListener("click",divide);   
}
function callingvalues(){
	firstNo = Number(a[0].value);
    secondNo = Number(a[1].value);
}
function add()
{
	callingvalues();
	addition=firstNo+secondNo;
	document.querySelector("p").innerHTML=addition;
}
function subtract()
{
	callingvalues();
	addition=firstNo-secondNo;
	document.querySelector("p").innerHTML=addition;
}
function multi()
{
callingvalues();
	addition=firstNo*secondNo;
	document.querySelector("p").innerHTML=addition;
}
function divide()
{
	callingvalues();
	addition=firstNo/secondNo;
	document.querySelector("p").innerHTML=addition;
}