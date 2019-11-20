X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/20/6
Message-ID: <alpine.GSO.2.20.1911201315110.15536@scrappy.simplesystems.org>
Date: Wed, 20 Nov 2019 13:28:04 -0600 (CST)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: Aditya Sirish Arunkumar Yelgundhalli <asy278@....edu>
cc: oss-security@...ts.openwall.com
Subject: Re: Mitigating malicious packages in gnu/linux
Content-Type: text/plain; charset=utf-8

The ideas I have seen posted on this topic thus far are about assuring 
correct provenance and that installed binaries are based on what the 
maintainer/developer intended.

The extreme focus on delivery mechanisms entirely ignores the fact 
that development source code is produced in environments which are not 
assured to be trustworthy (possibly sitting on hard drives for months 
or multiple years), and then stored in environments which may or may 
not be trustworthy (e.g. somewhere in a communal cloud).  This means 
that changes may be inserted into the source code without the 
developer/maintainer being aware.

There is also the implicit assumption that all developers and 
maintainers have the intention of being good and not intentionally 
inserting malicious code.  This is not always the case, particularly 
if a developer becomes deranged or disgruntled.  Not all developers 
are equally competent and sometimes a developer submits code with 
severe flaws.

Modern GNU/Linux systems have far too much executing code to 
reasonably secure.  Paring down the amount of executing code helps 
quite a lot with improving security.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
