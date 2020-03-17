<html>
<body>
<h2>ARITHMETIC OPERATION</h2>

<form name="calci">
 
  First Number:
 	 <input type="text" name="fno"><br><br>
 
  Second Number:
 	 <input type="text" name="sno"><br><br>
  
  operation: 
	 <select name="arithmetic">
		<option value="add" >Addition</option>
		<option value="sub" >Subtract</option>
		<option value="div" >Division</option>
		<option value="mul" >Multiplication</option>
		<option value="mod" >Modulus</option>		
	</select>

</form>

<input type="button" value="calculate" onclick="call()" >

<script language="javascript">

function call()
{
 var x,y;
	x=Number(document.calci.fno.value);
	y=Number(document.calci.sno.value);
	
if(calci.arithmetic.value=="add")
{
 alert("addition"+(x+y));
}


else if(calci.arithmetic.value=="sub")
{
 alert("substration"+(x-y));
}


else if(calci.arithmetic.value=="div")
{
 alert("Division"+(x/y));
}

else if(calci.arithmetic.value=="mul")
{
 alert("Multiplication"+(x*y));
}
else
  alert("MODULUS"+(x%y));
}
</script>
</body>
</html>
