// JavaScript Document
window.onload=initAll;
function validate(nomination)
{
	if(nomination.name.value=="")
	{
		alert("Please enter your name");
		nomination.name.focus();
		return false;
	}
	
	if(nomination.surname.value=="")
	{
		alert("Please enter your Surname");
		nomination.surname.focus();
		return false;
	}
	if(nomination.mobile.value=="")
	{
		alert("Please enter the Mobile number");
		nomination.mobile.focus();
		return false;
	}
	var a = nomination.mobile.value;
	if((a.length < 1) || (a.length > 12))
     {
      alert(" Invalid Mobile Number");
      nomination.mobile.select();
       return false;
     }
	var checkOK = "+- 0123456789";
	var checkStr = nomination.mobile.value;
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
			nomination.mobile.focus();
			return (false);
		}
	if(nomination.mail.value=="")
	{
		alert("Please enter your email Id");
		nomination.mail.focus();
		return false;
	}
	var checkEmail = "@.";
	var checkStr = nomination.mail.value;
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
			nomination.mail.focus();
			return (false);
		}
		if(nomination.nominated.value=="")
	{
		alert("Please fill the Nominated By column");
		nomination.nominated.focus();
		return false;
	}
	if(nomination.nomMob.value=="")
	{
		alert("Please enter the Mobile number");
		Form.nomMob.focus();
		return false;
	}
	var a = nomination.nomMob.value;
	if((a.length < 1) || (a.length > 12))
     {
      alert(" Invalid Mobile Number");
      nomination.nomMob.select();
       return false;
     }
	var checkOK = "+- 0123456789";
	var checkStr = nomination.nomMob.value;
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
			nomination.nomMob.focus();
			return (false);
		}
	if(nomination.nomMail.value=="")
	{
		alert("Please enter your email Id");
		nomination.nomMail.focus();
		return false;
	}
	var checkEmail = "@.";
	var checkStr = nomination.nomMail.value;
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
			nomination.nomMail.focus();
			return (false);
		}	
	
	
	hiddenField=1;
	return true;
}