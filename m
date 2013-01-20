X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/20/3
Message-ID: <CAH_aqbsuV0x33AeTUZH=nXt=79z-HsLO3M5=JQkZoT+s3k33Fg@mail.gmail.com>
Date: Sun, 20 Jan 2013 18:18:13 -0200
From: Henrique <typoon@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request - Wordpress 3.5 Full-path disclosure vulnerability
Content-Type: text/plain; charset=utf-8

Hello,

This is a request for a CVE for an issue with Wordpress 3.5 (and probably
earlier versions) that allows a full-path disclosure.
The issue can be reproduced by accessing the URL as follows:

http://wordpress_site/?s[]=1

producing the error:

Warning: stripslashes() expects parameter 1 to be string, array given in
/home/gilgamesh/security/wpress/wp-includes/query.php on line 2184

Before sanitizing the input, the variables passed should be validated that
they have the correct type in order to avoid such issues.

The wordpress team has already been notified and say they will look into
the code to improve it.

Regards,

Henrique

