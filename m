X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2748" "Thursday" "15" "September" "2016" "01:19:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160915051926.430853AE020@smtpvbsrv1.mitre.org>" "71" "[oss-security] Re: CVE request for Dropbear SSH <2016.74" nil nil nil "9" "2016091505:19:26" "[oss-security] Re: CVE request for Dropbear SSH <2016.74" (number mark "U       cve-assign@m Sep 15   71/2748  " thread-indent "\"[oss-security] Re: CVE request for Dropbear SSH <2016.74\"\n") "<20160914115904.GD17345@ucc.gu.uwa.edu.au>" ("<20160914115904.GD17345@ucc.gu.uwa.edu.au>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28569 invoked by uid 550); 15 Sep 2016 05:19:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28543 invoked from network); 15 Sep 2016 05:19:38 -0000
From: cve-assign@mitre.org
To: matt@ucc.asn.au
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160914115904.GD17345@ucc.gu.uwa.edu.au>
Message-Id: <20160915051926.430853AE020@smtpvbsrv1.mitre.org>
Date: Thu, 15 Sep 2016 01:19:26 -0400 (EDT)
Subject: [oss-security] Re: CVE request for Dropbear SSH <2016.74

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The first one has different exposure for
> client/server parts so I assume it should have separate
> CVEs?

We don't feel that it's a case of independent mistakes in the client
and server. The type of exposure is not, by itself, relevant to the
number of CVEs.


> - Security: Message printout was vulnerable to format string injection.
> 
>   If specific usernames including "%" symbols can be created on a system
>   (validated by getpwnam()) then an attacker could run arbitrary code as root
>   when connecting to Dropbear server.
> 
>   A dbclient user who can control username or host arguments could potentially
>   run arbitrary code as the dbclient user. This could be a problem if scripts
>   or webpages pass untrusted input to the dbclient program.
>   https://secure.ucc.asn.au/hg/dropbear/rev/b66a483f3dcb

Use CVE-2016-7406 for all of this.


> - Security: dropbearconvert import of OpenSSH keys could run arbitrary code as
>   the local dropbearconvert user when parsing malicious key files
>   https://secure.ucc.asn.au/hg/dropbear/rev/34e6127ef02e

Use CVE-2016-7407. (Admittedly, we do not completely understand
whether this is identical to a code problem previously found in
PuTTY.)


> - Security: dbclient could run arbitrary code as the local dbclient user if
>   particular -m or -c arguments are provided. This could be an issue where
>   dbclient is used in scripts.
>   https://secure.ucc.asn.au/hg/dropbear/rev/eed9376a4ad6

Use CVE-2016-7408.


> - Security: dbclient or dropbear server could expose process memory to the
>   running user if compiled with DEBUG_TRACE and running with -v
>   https://secure.ucc.asn.au/hg/dropbear/rev/6a14b1f6dc04

Use CVE-2016-7409.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX2i6BAAoJEHb/MwWLVhi2JT0P/RAN6ZPGdz5CQVvwxeZktmlW
0YO1CqcbjygdvN05/9gH0SDi4y+tKd1EEDsUoC9D40QKj1z2gACSbjdaxr3p8QSE
M9ifpotk7+9Qr6mjD+HXDWc+4gQTXH7SzLNiEv3PR/bu3lgc7+jRGU0bQRYSG8Vs
aYwGioFpu6QT57a+fdoaTEffz323eK3EY3CwQLGzKKJX7njeNos9H4nkv63KtU+z
dp5487NPuGxJmuC3XWpD9fwZSy4+vpIOD74zvf9POnwb04jQxHSJanhJ82vmFH/f
//MbplQeZzqz4ahcdLi5Gl6oXoLqn0f1nB4hJF5qHkuSXCN3ZSSM6+vbS4PZFpGP
7kVQFcV1RZmOVPLb+sMPWFARfQs/tkJ/aBtNbo8Pz/22jZaJBvIu3jm/qI60CaMi
CgWjBRYzJc8G3R5CkPJhEsdZmiRvEKgKukA1deQK/rn7pIskRecXomiM0NgdOsE/
Lds+20GxqOUA61we6rT5SDdSG2Cvmcp5cFxx+aZNeSIp3zBjQQ7er1p/41KZHPt/
Ro6ButS2P2/uJO/wyoCTYSpVgevxUT/fjhqBqRv8kviCYQIBt8h/WVrf/7aAPUFT
u7zs4V+/GkIX3tfy4NF+wi1JfLBAFLI5qeOnEgsIabuKODklyfZJ/P2Y8/csNo/8
HvkiTNnp74e393zYdSmH
=1PAi
-----END PGP SIGNATURE-----
