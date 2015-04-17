X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2582" "Friday" "17" "April" "2015" "16:45:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150417204518.87130132F291@smtpvbsrv1.mitre.org>" "59" "[oss-security] Re: CVE Request: PHP potential remote code execution with apache 2.4 apache2handler" nil nil nil "4" "2015041720:45:18" "[oss-security] Re: CVE Request: PHP potential remote code execution with apache 2.4 apache2handler" (number mark "        cve-assign@m Apr 17   59/2582  " thread-indent "\"[oss-security] Re: CVE Request: PHP potential remote code execution with apache 2.4 apache2handler\"\n") "<5530CD18.4000008@canonical.com>" ("<5530CD18.4000008@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23813 invoked by uid 550); 17 Apr 2015 20:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23795 invoked from network); 17 Apr 2015 20:45:30 -0000
In-Reply-To: <5530CD18.4000008@canonical.com>
Message-Id: <20150417204518.87130132F291@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@php.net
Date: Fri, 17 Apr 2015 16:45:18 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PHP potential remote code execution with apache 2.4 apache2handler
To: marc.deslauriers@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> PHP 5.4.40, 5.5.24 and 5.6.8 fixed a potential remote code execution
> vulnerability when used with the Apache 2.4 apache2handler.
> 
> https://bugs.php.net/bug.php?id=69218
> https://bugs.php.net/bug.php?id=68486 (still private)
> 
> Fixed by:
> 
> http://git.php.net/?p=php-src.git;a=commit;h=809610f5ea38a83b284e1125d1fff129bdd615e7

Use CVE-2015-3330. This CVE is for the following behavior in the
unpatched versions of PHP's sapi/apache2handler/sapi_apache2.c code:
lack of pool cleanup after each request in a series of pipelined HTTP
requests. This is a new scenario for pool cleanup, applicable during
interaction with Apache HTTP Server 2.4.x versions (interaction with
Apache HTTP Server 2.2.x versions had been working successfully).

The existence of this CVE does not mean that the
sapi/apache2handler/sapi_apache2.c code was "at fault" -- it only
means that, in practice, this sapi_apache2.c code wasn't compatible
with the 2.4.x behavior and therefore has now been changed.

The scope of this CVE does not include any other security implications
of the described behavior change between 2.2.x and 2.4.x: 'Apache 2.4
"broke" its API in the sense that the r->pool cleanup now happens
asynchronously with request processing - sending of reply data to the
client runs in parallel with processing the next request (of a
HTTP/1.1 pipelined connection, at least).'

The scope of this CVE does not include any security implications of
the described behavior of the "virtual" function in the
http://marc.info/?l=php-internals&m=142649836429352&w=2 post, e.g.,
"the ap_rflush() in zif_virtual() terminates the currently running
main request, in my testing, resulting in a completely crashing
apache."

Finally, the scope of this CVE does not, of course, include any
additional issue (if one exists) that was mentioned only in 68486, and
not mentioned in 69218.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMW7KAAoJEKllVAevmvmsNckH/2I6JBISE+Yi11TiNdxVmAy5
BsYG/4Lo85Ht1BPUZNJdKQJqmU0599dfytxWvgw5oqHZvGoJTHdMcpvORGTnZ0oI
om+jC+qN9vdbzQvzxazJ0t2vlYzB3uwM1JO9q74QJXnGwaJc6fmKnMRi4ZzL9ygX
22mfBCFmB2TSa8yDxFRsLUPQlNHjOS4tdsT6QI0I5KDd1W+JY1dYwsMF1fwrncui
61OhG1/WW4Xq3i11i9P6C7XfLwvNl3kloSALCnGr5PZI9409sNDCwJ+ytqt8664U
eUU8I4TPIOiS/t8DI1KMiCoBytkFO2eXD9vJvLywJjl3I4fpUAWNLQKHxnsG+Hk=
=EOa/
-----END PGP SIGNATURE-----
