X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4124" "Tuesday" "5" "July" "2016" "19:26:34" "+0200" "Dirk-Willem van Gulik" "dirkx@webweaving.org" "<fake-VM-id.0be7fdab8722bc60b6092e5b0ff637bd@talos.iv>" "121" "[oss-security] CVE-2016-4979: HTTPD webserver - X509 Client certificate based authentication can be bypassed when HTTP/2 is used [vs]" nil nil nil "7" "2016070517:26:34" "[oss-security] CVE-2016-4979: HTTPD webserver - X509 Client certificate based authentication can be bypassed when HTTP/2 is used [vs]" (number mark "U       dirkx@webwea Jul  5  121/4124  " thread-indent "\"[oss-security] CVE-2016-4979: HTTPD webserver - X509 Client certificate based authentication can be bypassed when HTTP/2 is used [vs]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15634 invoked by uid 550); 5 Jul 2016 17:26:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15610 invoked from network); 5 Jul 2016 17:26:45 -0000
Date: Tue, 5 Jul 2016 19:26:34 +0200 (CEST)
From: Dirk-Willem van Gulik <dirkx@webweaving.org>
To: oss-security@lists.openwall.com
Message-Id: CVE-2016-4979-68583
Mime-Version: 1.00
Content-Type: text/plain
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (weser.webweaving.org [127.0.0.1]); Tue, 05 Jul 2016 19:26:34 +0200 (CEST)
Subject: [oss-security] CVE-2016-4979: HTTPD webserver - X509 Client certificate based authentication can be bypassed when HTTP/2 is used [vs]

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1


          Security Advisory - Apache Software Foundation
                Apache HTTPD WebServer  / httpd.apache.org

	X509 Client certificate based authentication can
           be bypassed when HTTP/2 is used

                   CVE-2016-4979 / CVSS 7.5

The Apache HTTPD web server (from 2.4.18-2.4.20) did not validate a X509 
client certificate correctly when experimental module for the HTTP/2 
protocol is used to access a resource. 

The net result is that a resource that should require a valid client certificate
in order to get access can be accessed without that credential.

Background:
- -----------

Apache can control access to resources based on various things; such as 
a password, IP address and so on. One of the options, when SSL or TLS is
used, is gating access based on the client having access to a private-key of 
a X509 client certificate. These client certificates are typically held on
a chipcard (e.g. the CAC card in the US, national identity, banking cards
or, for example, medical-chip cards in Europe). In some cases they
are 'soft tokens' - i.e. files, often called PKCS#12 files, which are loaded
into the browser or the 'keychain'.

Gating access based on a client certificate is done by adding a line such as

	SSLVerifyClient require 

to the httpd configuration; along with a list of trusted client certificate
authorities (SSLCACertificateFile).

Version 2.4.17 of the Apache HTTP Server introduced an experimental feature:
mod_http2 for the HTTP/2 protocol (RFC7540, previous versions were known as 
Google SPDY).

This module is NOT compiled in by default -and- is not enabled by default, 
although some distribution may have chosen to do so.

It is generally needs to be enabled in the 'Protocols' line in httpd by 
adding 'h2' and/or 'h2c' to the 'http/1.1' only default. 

The default distributions of the Apache Software Foundation do not include 
this experimental feature. 

Details:
- --------

- From version 2.4.18, upto and including version 2.4.20 the server failed
to take the (failed/absent) client certificate validation into account
when providing access to a resource over HTTP/2. This issue has been fixed 
in version 2.4.23 (r1750779).

As a result - a resource thought to be secure and requiring a valid
client certificate - would be accessible without authentication 
provided that the mod_http2 was loaded, h2 or h2c activated, that
that the browser used the HTTP/2 protocol and it would do more than
one request over a given connection.

Impact:
- -------

A third party can gain access to resources on the web server without
the requisite credentials.

This can then lead to unauthorised disclosure of information.

Versions affected: 
- ------------------
All versions from  2.4.18 to  2.4.20. The issue is fixed in
version 2.4.23 (released 2015-6-5)

Resolution:
- -----------

Upgrade to version 2.4.23 or newer.

Mitigations and work arounds:
- -----------------------------

As a temporary workaround - HTTP/2 can be disabled by changing
the configuration by removing h2 and h2c from the Protocols
line(s) in the configuration file. 

The resulting line should read:

		Protocols http/1.1

Credits and timeline
- --------------------

The flaw was found and reported by Erki Aring <erki@example.ee> 
from Liewenthal Electronics Ltd on 2016-06-30. The issue was 
resolved by Stefan Eissing that same day and incorporated in 
the  release of 5th of July 2015 (thus avoiding a bank holiday).
 
Apache would like to thank all involved for their help with this.

Common Vulnerability Scoring (Version 3) and vector
- ---------------------------------------------------

CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N/E:F/RL:O/RC:C

CVSS Base Score         7.5
CVSS Temporal Score     7.0 

1.05 / : 2339 $
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4
Comment: This message is encrypted and/or signed with PGP (gnu-pg, gpg). Contact dirkx@webweaving.org if you cannot read it.

iEYEARECAAYFAld77bQACgkQ/W+IxiHQpxuLAgCg7FFTKxgA+cXRmusLNZGccZQG
Aj4AnRgIrXzfjn8esq4oTEuxNi5gaLgW
=SEBP
-----END PGP SIGNATURE-----
