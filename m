X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Wednesday" "27" "May" "2015" "11:26:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150527152645.6482242E0B4@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)" nil nil nil "5" "2015052715:26:45" "[oss-security] Re: Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)" (number mark "        cve-assign@m May 27   39/1573  " thread-indent "\"[oss-security] Re: Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)\"\n") "<5564A227.3030608@redhat.com>" ("<5564A227.3030608@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18131 invoked by uid 550); 27 May 2015 15:26:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18111 invoked from network); 27 May 2015 15:26:57 -0000
In-Reply-To: <5564A227.3030608@redhat.com>
Message-Id: <20150527152645.6482242E0B4@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 27 May 2015 11:26:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Question about tmp flaws in non-default build options (e.g. Kerberos DEBUG_ASN1)
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> only exist if you build with DEBUG_ASN1

As suggested in the
http://openwall.com/lists/oss-security/2014/01/29/10 post, unsafe
programming practices reachable in non-default builds are not within
the scope of CVE simply because the code exists. There must be
documentation indicating that an end user may wish to have the
applicable non-default build.

As far as we know, MIT Kerberos 5 does not document DEBUG_ASN1 for use
by end users. It seems reasonable to expect that those code sections
are only intended for use during development, and that there's a
cost/benefit tradeoff to addressing all possible risks to their
developers' machines. There won't be a CVE mapping for this DEBUG_ASN1
report unless the upstream vendor requests one.

> To: ... CVE ID Change <cve-id-change@mitre.org>

This report doesn't relate to the cve-id-change@mitre.org list.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVZeEwAAoJEKllVAevmvmsDj0H/R/JnY+GcIJkOvuq0qvJGqLm
lgF5zU/AJ/CObyajMW7ELgdM6vcljix8WR0e8wtE87Hn1Feov1e7WzrP0gk0HaXr
BTWzNmhkNj0wI65wYjhJ3QN4odQBl0I4lhnzjfJsADLEUuCeC/UqgGUokl4f7atB
YlWgET5uHXhMTjrjFZT0Qgxzda03lC951bXX93pD1Z6c8uAjM0O2HFrAV1pdfO8D
yxje1wh8jcPCJL74x9K2cuWa9Wrs/h/AA4ZS1naNb7yNnyHvEuE+uCRI82E3RgGe
iqW7MlEqKJHTo4Vcgp7gCTF+oMW3OWRdbbg6OcK+0BXTGdxYknXKK24olk7e9Hc=
=MUye
-----END PGP SIGNATURE-----
