// JavaScript Document

document.getElementById("name").addEventListener("keyup", sanjay);
function sanjay()

{var a=document.getElementById("name").value;
var b=a.length;
var c=a.indexOf("@");
var d=document.getElementById("main");
var e=document.getElementById("bar");
if(b<=2)

		{   
			d.innerHTML=" &#10006;";
			d.style.backgroundColor="red";
			d.style.fontSize="12";
			d.style.color="white";
			e.style.backgroundColor="red";
			e.style.width="20px";
			
			
		}
	else if(b<=4)
		{
			d.innerHTML="average";
			d.style.backgroundColor="pink";
			d.style.fontSize="14";
			d.style.color="white";
			e.style.backgroundColor="red";
			e.style.width="40px";
		}

	else if(b<=7)
			{
				d.innerHTML="good";
				d.style.backgroundColor="blue";
				d.style.fontSize="16";
				d.style.color="white";
				e.style.backgroundColor="blue";
			e.style.width="60px";
			}
		else if(b>7)
		{
		if(c!=-1)	
		{
			 d.innerHTML="perfect";
			 d.style.backgroundColor="green";
			 d.style.fontSize="20";
			 d.style.color="white";
			 e.style.backgroundColor="green";
			e.style.width="100px";	
		}
		else{
			d.innerHTML="strong";
			d.style.backgroundColor="brown";
			d.style.fontSize="18";
			d.style.color="white";
			e.style.backgroundColor="pink";
			e.style.width="80px";
		}
		}
 

}
