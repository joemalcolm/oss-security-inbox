X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2730" "Thursday" "21" "April" "2016" "13:02:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160421170216.E19B86C074A@smtpvmsrv1.mitre.org>" "56" "[oss-security] Re: CVE request: GnuPG classic & GnuPG modern" nil nil nil "4" "2016042117:02:16" "[oss-security] Re: CVE request: GnuPG classic & GnuPG modern" (number mark "U       cve-assign@m Apr 21   56/2730  " thread-indent "\"[oss-security] Re: CVE request: GnuPG classic & GnuPG modern\"\n") "<60D0FDCD56934588AF304C64AE3CB80D@W340>" ("<60D0FDCD56934588AF304C64AE3CB80D@W340>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25646 invoked by uid 550); 21 Apr 2016 17:02:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25628 invoked from network); 21 Apr 2016 17:02:34 -0000
From: cve-assign@mitre.org
To: stefan.kanthak@nexgo.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <60D0FDCD56934588AF304C64AE3CB80D@W340>
Message-Id: <20160421170216.E19B86C074A@smtpvmsrv1.mitre.org>
Date: Thu, 21 Apr 2016 13:02:16 -0400 (EDT)
Subject: [oss-security] Re: CVE request: GnuPG classic & GnuPG modern

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Loading of multiple Windows system DLLs from the installers application
> directory instead of Windows' system directory, a.k.a. DLL hijacking.

Before proceeding with CVE ID assignment, we have some questions. We
understand from your many reports of issues in other products that
there is a realistic attack scenario in which a Trojan horse
uxtheme.dll might already be present in the user's Downloads directory
before the user downloads/launches a GnuPG installer file (such as
gnupg-w32cli-1.4.20.exe or gnupg-w32-2.1.11_20160209.exe from the
https://gnupg.org/ftp/gcrypt/binary web site).

1. Is this a vulnerability in code that was developed specifically for
GnuPG, or is it a vulnerability in a third-party product that was used
to create the GnuPG executable installer files?

2. You refer to "the installers application directory" - this is
terminology that you have used in other reports about other products.
Can you confirm that this commonly means a Downloads directory or
%TEMP% -- and does not mean the %PROGRAMFILES%\GNU\GnuPG directory? In
other words, "installers application directory" seems potentially
ambiguous because %PROGRAMFILES%\GNU\GnuPG is the default application
directory that is created by the installer.

3. Would it be better to consider this a vulnerability in any web
browser, or other HTTP client, that defaults to saving all downloaded
executable files and DLL files into a single Downloads directory? At
least on Windows, if the user has chosen to download a .exe file,
perhaps the default behavior should make that .exe file the only file
in a directory, and that directory should be created in a safe
location and with safe permissions.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXGQbdAAoJEHb/MwWLVhi2YK4P/jTK4C1dBDwE5qDRkEj/e6ut
+JdnmZ/984MMawaH6uzjCJcIEWYmGtYslwHjd2HwFQxbGriYH4pMWIwqX1dAght+
VUJh/FOiOnMP6YrBEGtH4/q1r0ym5kWERaJv3ACu7/eaihqPJOrRnBlk9NfQfnbl
iGt7vmivC9CrHB0YQaECV9JHYQDq9ka1X6XRkEyJBUt7J1+hQHScjzRoqod0hL1H
Mvix96bFJAZJzM79A8IxJXOHVB6OiUTtkpcHdWtluLpXaT3H/PqpyL2tIriiv7YW
VFqsLt6iXJrwJ8ZlTogqcOphinZhG/M1B3Htqe/5QOLqOzD7KDEoJ82kpj2pQCJU
NDrsxiAf7gM8E9RDRVjzN/+fcdA4I+J8/jmdjJyc4uYI/xu44lcwKp2QHLThwKpP
n5Ge7/jYH2krXp7iwwxkQMm6OOFW16BBFpA2myZkknCvxeiUbEsU8ul6JHxxCiil
KtsOIE6oTpvjen1JqB5fXXzzf3W0dQB9AwtNxz5k9go1z+msASF5Ym5xgyh+Sc0L
jilKt37HkMOYU0bOGN+FiWOvSzYCtIxRTOoEmaxxKZZxWnslALeRJfYqtm5p3Cq5
UgvEX96p2HekPnjljwakSE/U9Yuc42lROfQQNM8aZo+fKwIqpIPAT9ipWW0P1Dy0
z+gfciVkcWm70hXJvrVE
=C6gY
-----END PGP SIGNATURE-----
