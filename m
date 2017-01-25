X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/25/18
Message-ID: <CAH8yC8n4BiR+o8hJOZWCFNcP+-2CPFqkWRm=z2760_vKgt0Eog@mail.gmail.com>
Date: Wed, 25 Jan 2017 16:48:04 -0500
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)
Content-Type: text/plain; charset=utf-8

> tl:dr; use Fedora or OpenSuse and their mingw-w64* packages to
> cross-compile and package from Linux; if you use Windows or OS X or
> anything else, use one of these in a VM.

Maven and Git are noteworthy here.

Maven was infamous for outdated packages. Confer, "The Vulnerability
Dataset of a Large Software Ecosystem",
http://bkarak.wizhut.com/www/pubs/pdfs/badgers2014.pdf.

Git took it to the next level and made it distributed. Instead of one
outdated repo like Maven, we now have hundreds or thousands of
outdated followers who don't pulll from master.

Jeff
