#!/usr/bin/perl --
#####################################################################
#                                                                   #
#  I have included this script to give you some help getting the    #
#  paths to your server, perl, sendmail and other environments...   #
#  This script will just get the Environments and print them out    #
#  for you so if you are unsure of what the full path to something  #
#  is, you can run this script and it will tell you...              #
#    Unix: upload the getenv.pl file to your cgi-bin and then       #
#          CHMOD to 755..  Then just go the the url of              #
#          the script...  http://www.yoursite.com/cgi-bin/getenv.pl #
#    NT: upload the getenv.pl file to your cgi-bin and then just    #
#        go the the url of the script...                            #
#           http://www.yoursite.com/cgi-bin/getenv.pl               #
#                                                                   #
#                                                                   #
#                        Get Environments                           #
#                                                                   #
#                       Copyright MHF Media                         #
#                           Chris Bruce                             #
#                     http://www.mhfmedia.com                       #
#                                                                   #
#####################################################################





# flush the buffers
$| = 1;
# find out if it is windows OS 
if ($^O eq 'MSWin32' || $ENV{'OS'} eq 'Windows_NT') {
      # this one for windows
      $dpath = "$ENV{'PATH_TRANSLATED'}";
      $dpath =~ s/\\getenv\.pl$//g;
      $windows = 'Yes';
}else{
      # this one for unix type
      $dpath = "$ENV{'SCRIPT_FILENAME'}";
      $dpath =~ s/\/getenv\.pl$//g;
      $windows = 'No';
}

push (@INC, "$dpath");

if ($windows eq 'Yes') {
print "Content-type: text/html\n\n";
print <<"__END_HTML__";

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Windows NT Environment Report</title>
</head>

<body>

<p align="center"><i><u><font size="6" face="Arial">MHF Media Environment Report</font></u></i></p>
<p align="center"><b><font face="Arial" size="2"><br>
I wrote this script for those of you who don't know CGI or Perl that well... I
hope this will help you with some of the paths you will need to know for
configuring my scripts... </font></b></p>
<hr>
<p align="center"><b><font face="Arial" size="2">Your Running on a
<font color="MAROON">Windows NT</font> Based Server...</font></b></p>
<hr>
<p><b><font face="Arial" size="2">Full Path Info:</font></b></p>
<ul>
  <li><font face="Arial" size="2"><b>&nbsp; The Full Path to <u>this</u>
  directory is: <br>
&nbsp;&nbsp;&nbsp;&nbsp; <i>&nbsp; <font color="MAROON">$dpath<br>
  <br>
  </font></i></b> <i>* Note the the path will read c:\\your\\path\\cgi-bin when the
  actual path is c:/your/path/cgi-bin...&nbsp; You need to replace the \\ with /
  ...</i></font></li>
</ul>
<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need the
Full Path for scripts that require you to put the path to a certain directory...&nbsp;
Above is the path that you uploaded this file to...&nbsp; Obviously, if you are
required to create a directory under another directory like you cgi-bin, the
path will have that directory in it...&nbsp; <br>
&nbsp;&nbsp;&nbsp; Example: Lets say you uploaded <u>getenv.pl</u> file to
your cgi-bin directory and the path above reads <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>c:/your/path/cgi-bin</i><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you add a directory under the cgi-bin called &quot;banners&quot;, the path to that
directory would be<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>c:/your/path/cgi-bin/banners</i></font></b></p>
<hr>
<p><b><font face="Arial" size="2">HTTP Path Info:</font></b></p>
<ul>
  <li><b><font face="Arial" size="2"><i>&nbsp; </i>The HTTP Path to this file
  is:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="MAROON"><i>http://$ENV{'SERVER_NAME'}$ENV{'PATH_INFO'}</i></font></font></b></li>
</ul>
<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need the
HTTP Path for scripts that require you to put the http path to a certain .pl
file...&nbsp; Above is the http path that you uploaded this file to...&nbsp;
Obviously, if you are required to create a directory under another directory
like you cgi-bin, the path will have that directory in it...&nbsp; <br>
&nbsp;&nbsp;&nbsp; Example: Lets say you uploaded <u>getenv.pl</u> file to
your cgi-bin directory and the path above reads <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>http://your/path/cgi-bin/getenv.pl</i><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you add a directory under the cgi-bin called &quot;banners&quot;, the path to that
directory would be<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>http://your/path/cgi-bin/banners/getenv.pl</i></font></b></p>
<hr>
<p><font face="Arial" size="2"><b>Blat Info:<br>
&nbsp; </b>(Blat is usually the Mail Program used for sending mail in <u>NT
Based</u> Server)</font></p>
<ul>
  <li><b><font face="Arial" size="2">Right now I have no way of searching for
  Blat on your server...&nbsp; <br>
&nbsp; The path is usually:<br>
&nbsp; <font color="MAROON"><i>&nbsp; c:/tools/blat/blat.exe</i></font></font></b></li>
</ul>
<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need to know
the path to Blat for scripts that need to send mail to recipients...&nbsp; If
you do not know the path to Blat, try the path that is listed above...&nbsp; If
that doesn't work you will need to find this out from your server
administrator...</font></b></p>
<hr>
<p align="center">I will install any of my scripts on your server for \$20.00</p>
<p align="center">MHF Media<br>
Chris Bruce<br>
<a href="http://www.mhfmedia.com">http://www.mhfmedia.com</a> <br>
<a href="mailto:webmaster\@mhfmedia.com">webmaster\@mhfmedia.com</a> </p>
<p>&nbsp;</p>

__END_HTML__

  print <<"__END_HTML__";
  <center>
  <table width="95%" cellpadding=0  cellspacing=3 bgcolor="#888888">
  <TR><TH bgcolor="#800040"><font face="Arial Bold" size=5 color="WHITE"><i>Full Enviroment Report </font></TH></TR>
  <TR><TD>
  <table width="100%" cellpadding=4 cellspacing=1 bgcolor="#cccccc">

__END_HTML__

# Print out all the environment variables
while(($key, $value)=each(%ENV)){
   print "  <TR><TD width=\"25%\" valign=\"top\" align=\"right\" bgcolor=\"#EEEEEE\"><font face=\"Arial Narrow\" size=2 color=\"NAVY\"><b> $key:</b> </font></TD><TD valign=\"top\" bgcolor=\"#FFFFFF\"><font face=\"Arial bold\" size=2 color=\"MAROON\"> $value</font></TD></TR>\n";
}

  print <<"__END_HTML__";
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PUSH PATH:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$dpath </font></td></TR>

  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_BINARY:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$^O </font></td></TR>
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_VERSION: </b></font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$] </font></TD>
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_LOCATION:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$^X </font></td></TR>

</TR></TABLE>
</TD></TR></TABLE>
</CENTER>
<br>
<br>
</body>

</html>
__END_HTML__

exit;
}


else {
# ($windows eq 'No') {
print "Content-type: text/html\n\n";
print <<"__END_HTML__";

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Unix Environment Report</title>
</head>

<body>

<p align="center"><i><u><font size="6" face="Arial">MHF Media Environment Report</font></u></i></p>
<p align="center"><b><font face="Arial" size="2"><br>
I wrote this script for those of you who don't know CGI or Perl that well... I
hope this will help you with some of the paths you will need to know for
configuring my scripts... </font></b></p>
<hr>
<p align="center"><b><font face="Arial" size="2">Your Running on a
<font color="MAROON">Unix</font> Based Server...</font></b></p>
<hr>
<p><b><font face="Arial" size="2">Full Path Info:</font></b></p>
<ul>
  <li><b><font face="Arial" size="2">&nbsp; The Full Path to <u>this</u>
  directory is: <br>
&nbsp;&nbsp;&nbsp;&nbsp; <i>&nbsp; <font color="MAROON">$dpath</font></i></font></b></li>
</ul>
<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need the
Full Path for scripts that require you to put the path to a certain directory...&nbsp;
Above is the path that you uploaded this file to...&nbsp; Obviously, if you are
required to create a directory under another directory like you cgi-bin, the
path will have that directory in it...&nbsp; <br>
&nbsp;&nbsp;&nbsp; Example: Lets say you uploaded <u>getenv.pl</u> file to
your cgi-bin directory and the path above reads <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>c:\\your\\path\\cgi-bin</i><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you add a directory under the cgi-bin called &quot;banners&quot;, the path to that
directory would be<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>c:\\your\\path\\cgi-bin\\banners</i></font></b></p>
<hr>
<p><b><font face="Arial" size="2">HTTP Path Info:</font></b></p>
<ul>
  <li><b><font face="Arial" size="2"><i>&nbsp; </i>The HTTP Path to this file
  is:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="MAROON"><i>http://$ENV{'SERVER_NAME'}$ENV{'SCRIPT_NAME'}</i></font></font></b></li>
</ul>
<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need the
HTTP Path for scripts that require you to put the http path to a certain .pl
file...&nbsp; Above is the http path that you uploaded this file to...&nbsp;
Obviously, if you are required to create a directory under another directory
like you cgi-bin, the path will have that directory in it...&nbsp; <br>
&nbsp;&nbsp;&nbsp; Example: Lets say you uploaded <u>getenv.pl</u> file to
your cgi-bin directory and the path above reads <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>http://your/path/cgi-bin/getenv.pl</i><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you add a directory under the cgi-bin called &quot;banners&quot;, the path to that
directory would be<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<i>http://your/path/cgi-bin/banners/getenv.pl</i></font></b></p>
<hr>
<p><font face="Arial" size="2"><b>Sendmail Info:<br>
&nbsp; </b>(Sendmail is usually the Mail Program used for sending mail in <u>
Unix Based</u> Server)</font></p>
<ul>
  <li><b><font face="Arial" size="2">This uses the &quot;whereis sendmail&quot; command 
  and does not work on all servers... If you see a set of paths to sendmail 
  below then your sever supports this command and below is a list of the results 
  it returned... The path is usually: /usr/sbin/sendmail or something like that... <br>
&nbsp;</font></b></li>
</ul>

__END_HTML__

@smail = split(" ", `whereis sendmail`);
#@smail = sort(@smail);

  foreach $sloc (@smail) {
#  print $|;
  print <<"__END_HTML__";
<p><b><font face="Arial Narrow" size=2 color="NAVY">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
SENDMAIL LOCATION: </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">&nbsp; 
$sloc </font><br></p>
__END_HTML__
 
  }
  print <<"__END_HTML__";

<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need to know
the path to Sendmail for scripts that need to send mail to recipients...&nbsp; If
this script did not print the path to Sendmail, try /usr/sbin/sendmail ...&nbsp; If
that doesn't work you will need to find this out from your server
administrator...</font></b></p>
<hr>
<p><b>Perl Info:</p>
<ul>
  <li><font face="Arial" size="2">This uses the &quot;whereis perl&quot; command 
  and does not work on all servers... If you see a set of paths to perl 
  below then your sever supports this command and below is a list of the results 
  it returned... The path is usually: /usr/bin/perl or something like that... <br>
&nbsp;</font></b></li>
</ul>

__END_HTML__


@wperl = split(" ", `whereis perl`);
#@wperl = sort(@wperl);

  foreach $ploc (@wperl) {
#  print "$ploc \n\n";
  print <<"__END_HTML__";
<p><b><font face="Arial Narrow" size=2 color="NAVY">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
PERL LOCATION: </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">&nbsp; 
$ploc </font><br></p>
__END_HTML__

  }
  print <<"__END_HTML__";

<p><b><font face="Arial" size="2">&nbsp;&nbsp;&nbsp;&nbsp; You will need to change 
the 1st line of each script that has the &quot;#!/usr/bin/perl&quot; in the 1st line, to 
whatever your path to perl is...&nbsp; If
this script did not print the path to Sendmail, try #!/usr/bin/perl ...&nbsp; If
that doesn't work you will need to find this out from your server
administrator...</font></b></p>
<hr>
<p>&nbsp;</p>
<p align="center">I will install any of my scripts on your server for \$20.00</p>
<p align="center">MHF Media<br>
Chris Bruce<br>
<a href="http://www.mhfmedia.com">http://www.mhfmedia.com</a> <br>
<a href="mailto:webmaster\@mhfmedia.com">webmaster\@mhfmedia.com</a> </p>
<p>&nbsp;</p>

__END_HTML__

  print <<"__END_HTML__";
  <center>
  <table width="95%" cellpadding=0  cellspacing=3 bgcolor="#888888">
  <TR><TH bgcolor="#800040"><font face="Arial Bold" size=5 color="WHITE"><i>Full Enviroment Report </font></TH></TR>
  <TR><TD>
  <table width="100%" cellpadding=4 cellspacing=1 bgcolor="#cccccc">

__END_HTML__

# Print out all the environment variables
while(($key, $value)=each(%ENV)){
   print "  <TR><TD width=\"25%\" valign=\"top\" align=\"right\" bgcolor=\"#EEEEEE\"><font face=\"Arial Narrow\" size=2 color=\"NAVY\"><b> $key:</b> </font></TD><TD valign=\"top\" bgcolor=\"#FFFFFF\"><font face=\"Arial bold\" size=2 color=\"MAROON\"> $value</font></TD></TR>\n";
}

  print <<"__END_HTML__";
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PUSH PATH:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$dpath </font></td></TR>

  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_BINARY:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$^O </font></td></TR>
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_VERSION: </b></font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$] </font></TD>
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_LOCATION:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$^X </font></td></TR>
__END_HTML__

if ($windows eq 'No') {

@wperl = split(" ", `whereis perl`);
#@wperl = sort(@wperl);

  foreach $ploc (@wperl) {

  print <<"__END_HTML__";
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>PERL_LOCATION:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$ploc </font></td></TR>
__END_HTML__
 
  }

@smail = split(" ", `whereis sendmail`);
#@smail = sort(@smail);

  foreach $sloc (@smail) {

  print <<"__END_HTML__";
  <TR><TD width="25%" valign="top" align="right" bgcolor="#EEEEEE"><font face="Arial Narrow" size=2 color="NAVY"><b>SENDMAIL_LOCATION:</b> </font></td><TD valign="top" bgcolor="#FFFFFF"><font face="Arial bold" size=2 color="MAROON">$sloc </font></td></TR>
__END_HTML__
 
  }
}
  print <<"__END_HTML__";

</TR></TABLE>
</TD></TR></TABLE>
</CENTER>
<br>
<br>
</body>

</html>
__END_HTML__
exit;

}

