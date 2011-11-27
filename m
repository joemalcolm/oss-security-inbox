X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/27/2
Message-ID: <20111127185109.GC3418@riva.dynamic.greenend.org.uk>
Date: Sun, 27 Nov 2011 18:51:10 +0000
From: Colin Watson <cjwatson@...ian.org>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Leo Iannacone <l3on@...ntu.com>
Subject: Re: CVE Request -- ClearSilver (neo_cgi) -- Format string flaw by processing CGI error messages in Python module
Content-Type: text/plain; charset=utf-8

On Sun, Nov 27, 2011 at 06:21:15PM +0100, Jan Lieskovsky wrote:
>   a format string flaw was found in the Python CGI Kit (neo_cgi)
> module of ClearSilver, a language-neutral HTML templating system,
> processed certain input, leading to Common Gateway Interface (CGI)
> script errors. A remote attacker could provide a specially-crafted
> input, which once processed by an application, using the Python
> language API of ClearSilver neo_cgi module, could lead to that
> particular application crash, or, potentially arbitrary code
> execution with the privileges of the user running the application.

Thanks for responding to this.  FWIW, I've attached a copy of the
original mail I sent to a couple of security@ addresses about this
vulnerability.

-- 
Colin Watson                                       [cjwatson@...ian.org]

Date: Thu, 17 Nov 2011 17:12:44 +0000
From: Colin Watson <cjwatson@...ntu.com>
To: security@...ian.org, security@...ntu.com
Cc: clearsilver@...kages.debian.org
Subject: clearsilver: possible format string vulnerability in Python extension
Message-ID: <20111117171243.GB3159@...a.dynamic.greenend.org.uk>
Mail-Followup-To: security@...ian.org, security@...ntu.com,
	clearsilver@...kages.debian.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Content-Transfer-Encoding: quoted-printable

While doing the Perl 5.14 transition in Ubuntu, I noticed that
clearsilver has a -Wformat-security warning (Ubuntu builds with
-Werror=3Dformat-security by default to catch exactly this kind of
problem):

  gcc -fno-strict-aliasing -DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-prototy=
pes -g -O2 -fstack-protector --param=3Dssp-buffer-size=3D4 -Wformat -Wfor=
mat-security -g -O2 -fstack-protector --param=3Dssp-buffer-size=3D4 -Wfor=
mat -Wformat-security -Werror=3Dformat-security -Wall -fPIC -Wall -I.. -D=
_FORTIFY_SOURCE=3D2 -fPIC -I/usr/include/python2.7 -I.. -D_FORTIFY_SOURCE=
=3D2 -fPIC -I../ -I/usr/include/python2.7 -c neo_cgi.c -o build/temp.linu=
x-i686-2.7/neo_cgi.o
  neo_cgi.c: In function 'p_cgi_error':
  neo_cgi.c:181:3: error: format not a string literal and no format argum=
ents [-Werror=3Dformat-security]

The effects of this can be reproduced like this:

  $ python
  >>> import neo_cgi
  >>> cgi =3D neo_cgi.CGI()
  >>> cgi.error('%s')
  Status: 500
  Content-Type: text/html
 =20
  <html><body>
  An error occured:<pre>|=E2=96=92U=E2=96=92LfU=E2=96=92LfU=E2=96=92@...=96=
=92`   =E2=96=92`=E2=96=92y=E2=96=92, x=E2=96=92</pre></body></html>

In fact, the examples shipped with clearsilver include exception
handlers that call cgi.error(s), so if you can manage to get a % into
something that will end up in a Python traceback then you can read bits
of process memory over the Internet and possibly do a limited amount of
modification too (with %n).

I have not reported this upstream.
http://code.google.com/p/clearsilver/source/browse/trunk/python/neo_cgi.c
shows that it has not yet been fixed.  Upstream appears to be
http://www.clearsilver.net/ / blong@...tion.net; perhaps somebody could
coordinate with him if you confirm this as a possible vulnerability?

Thanks,

--=20
Colin Watson                                       [cjwatson@...ntu.com]

