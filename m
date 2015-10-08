X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Thursday" "8" "October" "2015" "15:11:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151008191149.DDC3942E4F0@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability" nil nil nil "10" "2015100819:11:49" "[oss-security] Re: CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability" (number mark "U       cve-assign@m Oct  8   40/1761  " thread-indent "\"[oss-security] Re: CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability\"\n") "<20151008122930.GS8704@login.tika.stderr.nl>" ("<20151008122930.GS8704@login.tika.stderr.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3961 invoked by uid 550); 8 Oct 2015 19:12:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3941 invoked from network); 8 Oct 2015 19:12:01 -0000
In-Reply-To: <20151008122930.GS8704@login.tika.stderr.nl>
Message-Id: <20151008191149.DDC3942E4F0@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, alejandro@debian.org, kevin@krinke.ca
Date: Thu,  8 Oct 2015 15:11:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - perl library UI::Dialog 1.09 - shell escaping vulnerability
To: matthijs@stdin.nl

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=496448
> https://rt.cpan.org/Public/Bug/Display.html?id=107364

Use CVE-2008-7315.

Note that bug-report discussion debates the question of whether this
is a vulnerability. Our feeling is that "I have a script that parses
URLs from an e-mail and uses UI::dialog to prompt me to select one.
This means that sending me a specially crafted e-mail could cause
execution of arbitrary commands" is a plausible use case and that the
current documentation at http://search.cpan.org/~kck/UI-Dialog/
doesn't exclude this use case. Also, the code analysis in 107364
suggests that some or all parts of the product were attempting to
address input containing ` characters.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWFr7gAAoJEL54rhJi8gl51sIP/0VVhnUMgRBooEotNYh78GEE
F6qUp6oRxG51f3wf6csxcdpBdD4RkQYOXz99vM7fbey6AYBmRPBi432m/1X31UZD
xz6fYns7JDuVqbjL5zUqhBoqLhZwFzWZNbTRk/lEVzryhFIfGG7/Jy2P9mXbRMxV
ufUb/+ugbzvLeRV3Szf59q14TuiAWw/Q2YYHf0AhKVB7FOL4+cquuoSTranXcqA2
8HBRWlcPVrZGiHgWvRZQfEagsX7JVuqKQs6Hi2HHvATYR8Q2pywXYxBLqpMjdzDi
DL74S1MSXQ1zA0IQFh6XzaS/skEl4Lm3xlAllrgQm/U5N4KgxBn/P6+Fe/ea4Sph
r6GLCGzBXGHtFSUCzG7pOQKnvhpEMksD26c2usBwN2KzwubEFvkuanD+8bPxkNn/
YRjAX/TKvTlWU+FQ2m+8uvUmqHcO0jhzkcyiSX3hk6lb46gj2494UtwhxtCCYk8a
JvgJMmz4eKO3PMLOxf3YA9+kWyVom07uRPLzPIzYaptrV9+fRGfcwlPfEThmVR2W
8SKEzPE48m3PAsh19R8T1fB9MccYGllaORv/YEixpWtIIdkqVvD51+ivn0Mn3Zm9
00dONqNgKtxaDhQOjAFktuRrjtnFcDF97yfbWf+qayW3HAP6JzefJQWv8oMaZeVy
Vt7uwcSpg9AnV1Y0y6+0
=ZtLd
-----END PGP SIGNATURE-----
