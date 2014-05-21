// JavaScript Document
window.onload=initAll;
function validate(Form)
{
	if(Form.name.value=="")
	{
		alert("Please enter your name");
		Form.name.focus();
		return false;
	}
	
	if(Form.surname.value=="")
	{
		alert("Please enter your Surname");
		Form.surname.focus();
		return false;
	}
	if(Form.mobile.value=="")
	{
		alert("Please enter the Mobile number");
		Form.mobile.focus();
		return false;
	}
	var a = Form.mobile.value;
	if((a.length < 1) || (a.length > 12))
     {
      alert(" Invalid Mobile Number");
      Form.mobile.select();
       return false;
     }
	var checkOK = "+- 0123456789";
	var checkStr = Form.mobile.value;
	var allValid = true;
	var allNum = "";
	for (i = 0;  i < checkStr.length;  i++)
		{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++)
			
				if (ch == checkOK.charAt(j))
					break;
				if (j == checkOK.length)
					{
					allValid = false;
					break;
					}
				if (ch != ",")
					allNum += ch;
		}
		if (!allValid)
		{
			alert("Please enter valid data in  \"Mobile number\" field.");
			Form.mobile.focus();
			return (false);
		}
	if(Form.mail.value=="")
	{
		alert("Please enter your email Id");
		Form.mail.focus();
		return false;
	}
	var checkEmail = "@.";
	var checkStr = Form.mail.value;
	var EmailValid = false;
	var EmailAt = false;
	var EmailPeriod = false;
	for (i = 0;  i < checkStr.length;  i++)
		{
			ch = checkStr.charAt(i);
			for (j = 0;  j < checkEmail.length;  j++)
				{
					if (ch == checkEmail.charAt(j) && ch == "@")
						EmailAt = true;
					if (ch == checkEmail.charAt(j) && ch == ".")
						EmailPeriod = true;
	  				if (EmailAt && EmailPeriod)
						break;
	  				if (j == checkEmail.length)
						break;
				}
	// if both the @ and . were in the string
				if (EmailAt && EmailPeriod)
					{
						EmailValid = true
						break;
					}
		}
		if (!EmailValid)
		{
			alert("Please enter a valid email id");
			Form.mail.focus();
			return (false);
		}
		if(Form.nominated.value=="")
	{
		alert("Please fill the Nominated By column");
		Form.nominated.focus();
		return false;
	}
	if(Form.nomMob.value=="")
	{
		alert("Please enter the Mobile number");
		Form.nomMob.focus();
		return false;
	}
	var a = Form.nomMob.value;
	if((a.length < 1) || (a.length > 12))
     {
      alert(" Invalid Mobile Number");
      Form.nomMob.select();
       return false;
     }
	var checkOK = "+- 0123456789";
	var checkStr = Form.nomMob.value;
	var allValid = true;
	var allNum = "";
	for (i = 0;  i < checkStr.length;  i++)
		{
		ch = checkStr.charAt(i);
		for (j = 0;  j < checkOK.length;  j++)
			
				if (ch == checkOK.charAt(j))
					break;
				if (j == checkOK.length)
					{
					allValid = false;
					break;
					}
				if (ch != ",")
					allNum += ch;
		}
		if (!allValid)
		{
			alert("Please enter valid data in  \"Mobile number\" field.");
			Form.nomMob.focus();
			return (false);
		}
	if(Form.nomMail.value=="")
	{
		alert("Please enter your email Id");
		Form.nomMail.focus();
		return false;
	}
	var checkEmail = "@.";
	var checkStr = Form.nomMail.value;
	var EmailValid = false;
	var EmailAt = false;
	var EmailPeriod = false;
	for (i = 0;  i < checkStr.length;  i++)
		{
			ch = checkStr.charAt(i);
			for (j = 0;  j < checkEmail.length;  j++)
				{
					if (ch == checkEmail.charAt(j) && ch == "@")
						EmailAt = true;
					if (ch == checkEmail.charAt(j) && ch == ".")
						EmailPeriod = true;
	  				if (EmailAt && EmailPeriod)
						break;
	  				if (j == checkEmail.length)
						break;
				}
	// if both the @ and . were in the string
				if (EmailAt && EmailPeriod)
					{
						EmailValid = true
						break;
					}
		}
		if (!EmailValid)
		{
			alert("Please enter a valid email id");
			Form.nomMail.focus();
			return (false);
		}	
	
	
	hiddenField=1;
	return true;
}