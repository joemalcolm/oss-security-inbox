X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/24/7
Message-ID: <alpine.GSO.2.20.1704241659260.19751@scrappy.simplesystems.org>
Date: Mon, 24 Apr 2017 17:08:57 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: remote DoS via CPU exhaustion in anon FTP server glob expansion
Content-Type: text/plain; charset=utf-8

There was no mention of ImageMagick and GraphicsMagick, which have 
their own built-in glob algorithm.

When a matching file exists, a glob expression which takes massive 
time with zsh, takes virtually no time with ImageMagick/GraphicsMagick 
(much better than zsh).  However if there is no matching file, then 
the amount of time required seems unbounded.

Besides being passed as an explicit argument, glob expressions can be 
passed as multiple lines in a text file preceded with a '@' character 
like

   @filename.txt

Any input file name could be a glob expression.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
