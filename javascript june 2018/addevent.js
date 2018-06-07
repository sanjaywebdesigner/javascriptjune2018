window.addEventListener("load",myfunction);
function myfunction(){
    document.getElementById("a3").addEventListener("click",add); 
	document.getElementById("a4").addEventListener("click",subtract);
	document.getElementById("a5").addEventListener("click",multi);
	document.getElementById("a6").addEventListener("click",divide);   
}
function callingvalues(){
	firstNo = Number(document.getElementById("a1").value);
    secondNo = Number(document.getElementById("a2").value);
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