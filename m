X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2487" "Monday" "3" "April" "2017" "12:22:15" "+0200" "Dirk-Willem van Gulik" "dirkx@webweaving.org" "<fake-VM-id.7bef7266979820a61d9ed1f7294eeaf0@talos.iv>" "71" "[oss-security] CVE-2017-7239: ninka license identification tool:  insufficient escaping of external input [vs]" nil nil nil "4" "2017040310:22:15" "[oss-security] CVE-2017-7239: ninka license identification tool: insufficient escaping of external input [vs]" (number mark "U       dirkx@webwea Apr  3   71/2487  " thread-indent "\"[oss-security] CVE-2017-7239: ninka license identification tool:  insufficient escaping of external input [vs]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13545 invoked by uid 550); 3 Apr 2017 13:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11721 invoked from network); 3 Apr 2017 10:22:28 -0000
Date: Mon, 3 Apr 2017 12:22:15 +0200 (CEST)
From: Dirk-Willem van Gulik <dirkx@webweaving.org>
To: oss-security@lists.openwall.com
Message-Id: CVE-2017-7239-8662@webweaving.org
Mime-Version: 1.00
Content-Type: text/plain
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3 (weser.webweaving.org [127.0.0.1]); Mon, 03 Apr 2017 12:22:16 +0200 (CEST)
Subject: [oss-security] CVE-2017-7239: ninka license identification tool:  insufficient escaping of external input [vs]

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1


             ninka license identification tool
          insufficient escaping of external input

                CVE-2017-7239 / CVSS 9.3
                        1.07

The ninka license identification tool does not properly escape
special characters in the files it encounters - such as the ‘&’.

In case of an alien code bases; or a code base that is brought in for
examination - a third party may doctor the file names as to cause 
a certain result of the license compliance scan. Or the attacker may 
adversely affect the ninka user their environment (e.g. an automated
continuous integration setup) by causing it to hang.

This can then lead to unauthorised disclosure of information,
unreliable compliance information or a denial of services.

Versions affected: 
- - ------------------
All versions up to and including version 1.3.0.

Resolution:
- - -----------
Upgrade to version 1.3.2 or later - available on
https://github.com/dmgerman/ninka. 

Mitigations and work arounds:
- - -----------------------------
Test the filenames passed for obvious issues. Given that ninka is
generally only applied to (source)code - a regex matching just
the alphanumerics and a few glyphs such as the dash and dot
can usually be applied.

Credits and timeline
- - --------------------
The flaw was found and reported by Dirk-Willem van Gulik <dirkx
@ webweaving.org) on the 12 of March 2017. D.M. German <dmg
@ turingmachine.org >  fixed the issue on the 27th of March 2017.

2017-01-28	vulnerability found, reported to authors.
2017-03-21	sample found in alien codebase.
2017-03-23	reported to more recent email addresses of authors .
2017-03-26	reported to the authors by phone.
2017-03-27	CVE issued by mitre. fix created by author and
                pushed to github (1.3.1)
2017-04-01	Full disclosure process started.
2017-04-03	Updated the advisory; an improverd fix is
                present in version 1.3.2.

Common Vulnerability Scoring (Version 3) and vector
- - ---------------------------------------------------
CVSS:3.0/AV:L/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H/E:H/RC:R/CR:L/IR
  :L/AR:L/MAV:L/MAC:L/MPR:N/MUI:N/MS:U/MC:H/MI:H/MA:H

CVSS Base Score          9.3
CVSS Temporal Score      9.0
CVSS Environmental Score 6.4

1.07 / : 2719 $
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0

iEYEARECAAYFAljiIlAACgkQ/W+IxiHQpxsahQCeJLsg0CkHAPQOUymwDM54R7Qj
CMEAoOtJVpgi76+CqprE/q6G+JzHur+y
=jRAl
-----END PGP SIGNATURE-----
